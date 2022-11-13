<h1 align="center">Code Dotfiles</h1>

<img src=".assets/dots.png" align="left" width="508">

- Os: [Pop-os](https://pop.system76.com/)
- Wm: [Bspwm](https://github.com/baskerville/bspwm)
- Bar: [Polybar](https://github.com/polybar/polybar)
- Launcher: [Rofi](https://github.com/davatorium/rofi)
- Lock: [BetterLockScreen](https://github.com/betterlockscreen/betterlockscreen)
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)
- Notifications: [Dunst](https://github.com/dunst-project/dunst)


<br><br>
<br><br>
<h2 align="left">⚙️ To Install.</h2>

<h3>🤏 First install the <b>dependencies</b></h3>

```
sudo apt install tree npm ranger cava git build-essential kitty scrot cmake libtool libtool-bin libintl-perl libdbus-1-dev libx11-dev libxinerama-dev libxrandr-dev libxss-dev libglib2.0-dev libpango1.0-dev libgtk-3-dev libxdg-basedir-dev libnotify-dev curl wmctrl slop xclip libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl-dev libegl-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson unzip feh rofi polybar bspwm sxhkd dunst 
```

<h3>🫴 Without bspwm</b></h3>

```
sudo apt install tree npm ranger cava git build-essential kitty cmake libtool libtool-bin libintl-perl libdbus-1-dev libx11-dev libxinerama-dev libxrandr-dev libxss-dev libglib2.0-dev libpango1.0-dev libgtk-3-dev libxdg-basedir-dev libnotify-dev curl wmctrl slop xclip libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl-dev libegl-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson unzip 
```

<br>

- Execute setup.sh
- Enter the `neovim_theme_local` and execute install.sh to install a colorscheme for nvim <b>(opitional)</b>

<details>
  <summary><h3>🖥️ Desktop</h3></summary>
  <img src=".assets/desktop.png" align="center" width="1000">
</details>

<details>
  <summary><h3>💾 Neovim</h3></summary>
  <img src=".assets/neovim.png" align="center" width="1000">

<br><h2>
🥸 How to make neovim work correctly
</h2><br>

<details>
  <summary><h3>🔋 Scripts</h3></summary>
  ``` Wait ```
</details>
- First clone the oficial neovim repo

```
git clone https://github.com/neovim/neovim
```

- Now build neovim from source

```
cd neovim

make CMAKE_BUILD_TYPE=RelWithDebInfo

sudo make install
```

- For packer, clone & install packer

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
<h3>
✅ Now you can enter in your NVIM and type :PackerInstall
</h3><br>

</details>

<details>
  <summary><h3>📁 Gtk Theme</h3></summary>
  <img src=".assets/thunar.png" align="center" width="1000">
</details>

<details>
  <summary><h3>🦊 Firefox</h3></summary>
  <img src=".assets/firefox.png" align="center" width="1000">
</details>

<details>
  <summary><h3>✨ Pop Setup</h3></summary>
  <img src=".assets/pop.png" align="center" width="1000">

  <br><h2>
    ⚙️ Some modifications i make in pop setup, like
  </h2><br>

  - Remove launcher hint color
  
  ```
  sudo vim /usr/share/gnome-shell/extensions/pop-shell@system76.com/launcher.js

  In line 47 change ext.overlay.visible = true; to false.
  ```

</details>

<br><h2>
  🐸 If you want spicetify
</h2><br>
<p>
🚧 This page is in construction !!
</p>

```
curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh

sudo chmod a+wr /usr/share/spotify

sudo chmod a+wr /usr/share/spotify/Apps -R

cd .spicetify

./spicetify backup apply enable-devtool

./spicetify restart

curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
```
