# vim:ft=sh

# Symbols

blub_left=''
blub_right=''
ssh_symbol='ssh'

# Main

user_symbol=''
machine_symbol=' '
filepath_symbol=' %~'

# Git

git_branch_symbol=''
git_modified_symbol='•'
git_added_symbol=''
git_deleted_symbol=''
git_renamed_symbol='凜'
git_untracked_symbol='裸'
git_copied_symbol=''
git_unmerged_symbol='!'
git_stashed_symbol=''

# Colors

bubble_color='black'
prompt_symbol_color='blue'
prompt_symbol_error_color='red'
user_color='cyan'
user_machine_symbol_color='green'
machine_color='magenta'
filepath_color='yellow'
git_clean_color='green'
git_unstaged_color='yellow'
git_staged_color='magenta' 
git_stashed_color='blue'
git_unmerged_color='red'
git_symbols_color='black'
ssh_symbol_color='black'
ssh_bubble_color='green'

# Functions

bubblify () {
    if [[ $1 -eq 0 ]]; then
        echo -n "$(foreground $4)$blub_left$(foreground $3)$(background $4)$2%{$reset_color%}"
    elif [[ $1 -eq 1 ]]; then
        echo -n "$(foreground $3)$(background $4)$2%{$reset_color%}"
    elif [[ $1 -eq 2 ]]; then
        echo -n "$(foreground $3)$(background $4)$2%{$reset_color%}$(foreground $4)$blub_right%{$reset_color%}"
    elif [[ $1 -eq 3 ]]; then
        echo -n "$(foreground $4)$blub_left$(foreground $3)$(background $4)$2%{$reset_color%}$(foreground $4)$blub_right%{$reset_color%}"
    else
        echo -n 'bblfy_fail'
    fi
}

foreground () {
    if [[ $1 =~ '[0-9]{3}' && $1 -le 255 && $1 -ge 0 ]]; then
        echo -n "%{$FG[$1]%}"
    else
        echo -n "%{$fg[$1]%}"
    fi
}

background () {
    if [[ $1 =~ '[0-9]{3}' && $1 -le 255 && $1 -ge 0 ]]; then
        echo "%{$BG[$1]%}"
    else
        echo "%{$bg[$1]%}"
    fi
}

# Prompt functions

git_bubble () {
    local git_branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)

    if [[ -n $git_branch ]]; then
        local git_info="$git_branch_symbol $git_branch"
        local git_symbols=""
        local git_status=$(git status -s 2> /dev/null | awk '{print substr($0,1,2)}') 

        local git_unmerged=$(grep -m1 -E -- 'U|DD|AA' <<< $git_status)
        local git_branch_stashed=$(git stash list | grep $git_branch)
        local git_unstaged=$(echo -n $git_status | awk '{print substr($0,2,1)}')

        local git_not_clean=$git_status
        local git_modified=$(grep -m1 'M' <<< $git_status)
        local git_added=$(grep -m1 'A' <<< $git_status)
        local git_deleted=$(grep -m1 'D' <<< $git_status)
        local git_untracked=$(grep -m1 '??' <<< $git_status)
        local git_renamed=$(grep -m1 'R' <<< $git_status)
        local git_copied=$(grep -m1 'C' <<< $git_status)

        if [[ -n $git_unmerged ]]; then
            local git_color=$git_unmerged_color   
            git_symbols="$git_symbols$git_unmerged_symbol"
        elif [[ -n $git_branch_stashed ]]; then
            local git_color=$git_stashed_color
            git_symbols="$git_symbols$git_stashed_symbol"
        elif [[ -n "${git_unstaged//[$' \t\r\n']}" && -n $git_not_clean ]]; then
            local git_color=$git_unstaged_color
        elif [[ -z "${git_unstaged//[$' \t\r\n']}" && -n $git_not_clean ]]; then
            local git_color=$git_staged_color
        else
            local git_color=$git_clean_color
            git_symbols="$git_symbols$git_clean_symbol"
        fi

        if [[ -n $git_modified ]]; then
            git_symbols="$git_symbols$git_modified_symbol"
        fi
        if [[ -n $git_added ]]; then
            git_symbols="$git_symbols$git_added_symbol"
        fi
        if [[ -n $git_deleted ]]; then
            git_symbols="$git_symbols$git_deleted_symbol"
        fi
        if [[ -n $git_untracked ]]; then
            git_symbols="$git_symbols$git_untracked_symbol"
        fi
        if [[ -n $git_renamed ]]; then
            git_symbols="$git_symbols$git_renamed_symbol"
        fi
        if [[ -n $git_copied ]]; then
            git_symbols="$git_symbols$git_copied_symbol"
        fi

        echo -n "$(bubblify 0 "$git_info " $git_color $bubble_color)$(bubblify 2 " $git_symbols" $git_symbols_color $git_color) "
    fi
}

ssh_bubble () {
    if [[ -n $SSH_CLIENT || -n $SSH_TTY || -n $SSH_CONNECTION ]]; then
        echo -n "$(bubblify 3 "$ssh_symbol" $ssh_symbol_color $ssh_bubble_color) "
    fi
}

# Prompt building blocks

bubble_left="$(foreground $bubble_color)$blub_left%{$reset_color%}$(background $bubble_color)"
bubble_right="%{$reset_color%}$(foreground $bubble_color)$blub_right%{$reset_color%} "
end_of_prompt_bubble="$bubble_left%(?,$(foreground $prompt_symbol_color)$prompt_symbol,$(foreground $prompt_symbol_error_color)$prompt_symbol)$bubble_right"
end_of_prompt=" %(?,$(foreground $prompt_symbol_color)$prompt_symbol,$(foreground $prompt_symbol_error_color)$prompt_symbol%{$reset_color%}) "
user_machine_bubble="$bubble_left$(foreground $user_color)$user_symbol$(foreground $user_machine_symbol_color)$user_machine_symbol$(foreground $machine_color)$machine_symbol$bubble_right"
filepath_bubble="$bubble_left$(foreground $filepath_color)$filepath_symbol$bubble_right"
error_code_bubble="%(?,,$bubble_left$(foreground $prompt_symbol_error_color)%?$bubble_right)"

# Prompt return

PROMPT='$(ssh_bubble)$user_machine_bubble$filepath_bubble'
RPROMPT='$(git_bubble)'