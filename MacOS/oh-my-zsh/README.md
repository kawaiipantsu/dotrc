# ᵔᴥᵔ Zsh - Runtime configuration

> I'm using the "Oh-My-Zsh" environment ʘ‿ʘ

Please note that my .zshrc is not really useful for a bare zSH installation, I require and rely heavily on the zSH environment called Oh-My-Zsh. That said, if you are going for Zsh on your workstation I don't see any reason not to use Oh-My-Zsh as it's aimed and optimised for developers and devops!

This is not a installation guide per-se but more a list of all the items that build up my Oh-My-Zsh / zshrc configuration. I will try to include some quick and dirty install commands for you to copy paste so you don't have to grind the internet for answers.

Here is a quick screenshot of my terminal so you can see what it looks like.

![Zsh Screenshot](/MacOS/oh-my-zsh/screenshot_v2.png?raw=true "Zsh Screenshot")

# Table of Contents

- [ᵔᴥᵔ Zsh - Runtime configuration](#----zsh---runtime-configuration)
- [Table of Contents](#table-of-contents)
  * [My Zsh + Terminal + Font and Theme/Color setup](#my-zsh---terminal---font-and-theme-color-setup)
  * [Installing it all](#installing-it-all)
    + [Zsh (Oh-My-Zsh)](#zsh--oh-my-zsh-)
    + [iTerm2 + Color schemes](#iterm2---color-schemes)
    + [Home Brew](#home-brew)
    + [Nerd Font](#nerd-font)
    + [Oh-My-Zsh Theme (PowerLevel10k) and Plugins](#oh-my-zsh-theme--powerlevel10k--and-plugins)
  * [Powerlevel9k -> Powerlevel10k Migrate already running setup with Oh My Zsh](#powerlevel9k----powerlevel10k-migrate-already-running-setup-with-oh-my-zsh)
  * [iTerm2 - ZSH Shell integration](#iterm2---zsh-shell-integration)
  * [Hush Last login message](#hush-last-login-message)
  * [Activating it all](#activating-it-all)

---

## My Zsh + Terminal + Font and Theme/Color setup

 - Zsh is installed and changed to via the Oh-My-Zsh installation
 
 - Terminal software is **iTerm2** ( a must terminal for MacOS! )
 
 - Font "**Nerd Font**" it's a combination of all the fancy terminal fonts out there and optimized for Developers and DevOps. 40+ patched fonts, over 3,600 glyph/icons!
 
 - Theme & Color setup is a bit messy but the end-result is nice! For Oh-My-Zsh I use the theme "**powerlevel10k**" and for iTerm2 I use the color scheme "**Blazer**"
 
 - Also I like to notice that I have installed "**Brew**" - The best package manager for MacOS that gives you access to almost all Linux commands!

I would recommend that you visit each of these sites to install things, but I'll try to make it a bit easier for you and list some very basic steps for you to get rollin! Please if individual steps fails they might have changed since I wrote this README.

## Installing it all

### Zsh (Oh-My-Zsh)

Oh-My-Zsh has a very basic and easy installation, you simple use their download/install script in one swoosh - This will also help you setup Zsh and activate it !

Installation via cURL (Most MacOS have this)

```zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Installation via Wget

```zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

Please follow any on-screen installation instructions.
And make sure that your Zsh prompt works before continuing.

### iTerm2 + Color schemes

MacOS already comes with a nice Terminal, but I like to go a bit further and iTerm2 is absolute a winner. It's very well optimised and has all the features that you would expect for any Terminal app. Also it has some nice features for custom profiles and tmux integration. If you want to know more, you should really go look at their [webpage](https://iterm2.com)!

Fetch the latest iTerm2 from their website.
https://iterm2.com/downloads/stable/latest

Download the color scheme: [Blazer.itermcolors](https://raw.githubusercontent.com/kawaiipantsu/dotrc/master/MacOS/oh-my-zsh/Blazer.itermcolors)

Once you have installed iTerm2 you can install the color scheme by doing the following.

 - Going to Preferences ( **⌘,** )
 - Click "**Profiles**" tab and choose "**Default**" profile.
 - Under the **Colors** tab, click on "**Color presets...**"
 - Scroll to the bottom, click "**Import**" 
 - Browse to where you downloaded "**Blazer.itermcolors**" and choose it.

That's it! Now you can choose that color scheme and we can move on.
There are plenty of things you might want to setup in iTerm2 but I'll let you play around with that. If you want help you can always contact me.

I included my new background, normally i used the one included with iterm2. But later i have moved away and wanted a bt more stylish one but mellow, sleek and smooth just like the default. It's nothing much, but updated to 1440p for full screen terminal windows etc and then it would still look nice! I might make more later.

**You can get it here:** [background_v2_1440p.jpg](https://raw.githubusercontent.com/kawaiipantsu/dotrc/master/MacOS/oh-my-zsh/background_v2_1440p.jpg)

### Home Brew

Home brew is a package manager for MacOS unix that gives you access to many Linux commands/software in a very familiar and easy way. Like apt-get etc for Debian.

To install Home Brew do the following (taken from their [website](https://brew.sh))
(This also includes the Xcode Command Line Tools step)

Start iTerm2 and do the following

```zsh
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Follow the on-screen instructions if any.

Here is a list of things i usually install that i use on a daily basis when working in the console.

```zsh
brew install mc
brew install wget
brew install curl
brew install w3m
brew install vim
brew install macvim
brew install tmux
brew install htop
brew install irssi  
brew install tree
brew install task
brew install tashsh
brew install fortune
brew install jesseduffield/lazygit/lazygit
brew install jsonpp
```

### Nerd Font

First of, if you're not familiar with Nerd Font, you really need to check it out. It's very comprehensive and optimised for developers and likeminded. You can find it [here](https://github.com/ryanoasis/nerd-fonts).

To sum it up fast, it's a combination of over 40 patched fonts for developers like "Meslo", "DejaVu", "GoHu" and so on but also it includes the various icons and symbols that Powerline and other fonts include to make Git, Connectivity and other statues easy to show. Actually they include over 3600 icons/glyphs and symbols in all the fonts.

All in all, this font is pretty much a must if you ask me. No reason to not install it rather than installing separate fonts and missing out on cool glyphs!

We are going to take advantage of a Nerd Font (Meslo) that is patched directly for use with our theme that we are using later on.

**To install - Meslo Nerd Font patched for Powerlevel10k**

To install it via the theme use their wizard. Simply answer `Yes` when asked whether to install `Meslo Nerd Font`
     
```zsh
p10k configure
```

To install it manually grab the font files here

- [MesloLGS NF Regular.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

Double-click on each file and click "Install". This will make `MesloLGS NF` font available to all
applications on your system. Configure your terminal to use this font.


### Oh-My-Zsh Theme (PowerLevel10k) and Plugins

This is a very nice and custom theme for Oh-My-Zsh and Zsh in general.
I highly recommend it - To see more take a look at their [webpage](https://github.com/bhilburn/powerlevel9k).

To install it for Oh-My-Zsh it's fairly easy, just do the following

```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

To customise the theme and prompt, you can run their wizard script.

```zsh
p10k configure
```

Next let's install some of the custom plugins I have enabled in my config .zshrc the rest of the plugins are all included in Oh-My-Zsh. If you don't want to install these, disable them in the `.zshrc` file !

- **zsh-autosuggestions** -  Neat and functional
- **zsh-syntax-highlighting** - I like this plugin, makes it more colorfull :)
- **zsh-history-substring-search** - Nice history search, hate it or love it!

To install **zsh-autosuggestions** plugin
```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

To install **zsh-syntax-highlighting** plugin
```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

To install **zsh-history-substring-search** plugin
```zsh
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

Also you need to install "fortune" as chucknorris depends on strfile that's included in fortune.

```zsh
brew install fortune
```


## Powerlevel9k -> Powerlevel10k Migrate already running setup with Oh My Zsh

Do the following

```zsh
# Add powerlevel10k to the list of Oh My Zsh themes.
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# Replace ZSH_THEME="powerlevel9k/powerlevel9k" with ZSH_THEME="powerlevel10k/powerlevel10k".
sed -i.bak 's/powerlevel9k/powerlevel10k/g' ~/.zshrc
# Restart Zsh.
exec zsh
# Run the PowerLevel10k Wizard
p10k configure
```

## iTerm2 - ZSH Shell integration

Install iTerm2 shell integration!

```zsh
curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh
```

Don't forget to turn of the iterm-marker or else it's just going to look ugly :) To run it off do the following.

- Go into `Preferences > Profiles > (your profile) > Terminal`
- Scroll down to `Shell Integration` and turn off `Show mark indicators`

## Hush Last login message

Are you a little tired that everytime you start a terminal on MacOS it tells you the following...

```
Last login: Sat Oct 10 14:19:00 on ttys001
```

Well it don't have to! If you like me want clean lines and more room in your terminal window you can disable it by doing the following.

```zsh
touch $HOME/.hushlogin
```

To return to the old ways, just delete the `.hushlogin` file.

## Activating it all

To take use of all the things we have install thus far, we need to make some changes.
You might already have made these changes on the fly when you installed each thing if you could not wait :) But anyway, here is the final steps!!

 - Copy-Paste the content of [.zshrc](https://github.com/kawaiipantsu/dotrc/blob/master/MacOS/oh-my-zsh/.zshrc) into your own file. ( `$EDITOR ~/.zshrc` )
 
 - Change the font in iTerm2 ( **⌘,** ) under "**Profiles**" -> **Default** -> **Text** set it to `15pt MesloLGS NF`
 
 - Set background, transparency and blend in iTerm2 ( **⌘,** ) under "**Profiles**" -> **Default** -> **Window** set Background Image to `background_v2_1440p.jpg`, check "**Keep background Colors opaque**" and enable "**Blur**" then adjust Blur, Transparency and Blending to what you like best. 

**All Done!!**

Restart your iTerm2 terminal, now enjoy and have fun!
