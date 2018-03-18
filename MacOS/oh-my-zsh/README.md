# ᵔᴥᵔ Zsh - Runtime configuration

> I'm using the "Oh-My-Zsh" environment ʘ‿ʘ

Please note that my .zshrc is not really useful for a bare zSH installation, I require and rely heavily on the zSH environment called Oh-My-Zsh. That said, if you are going for Zsh on your workstation I don't see any reason not to use Oh-My-Zsh as it's aimed and optimised for developers and devops!

This is not a installation guide per-se but more a list of all the items that build up my Oh-My-Zsh / zshrc configuration. I will try to include some quick and dirty install commands for you to copy paste so you don't have to grind the internet for answers.

Here is a quick screenshot of my terminal so you can see what it looks like.

![Zsh Screenshot](/MacOS/oh-my-zsh/screenshot.png?raw=true "Zsh Screenshot")

# Table of Contents

 * [My Zsh + Terminal + Font and Theme/Color setup](#my-zsh--terminal--font-and-themecolor-setup)
 * [Installing it all](#installing-it-all)
   * [Zsh (Oh-My-Zsh)](#zsh-oh-my-zsh)
   * [iTerm2 + Color schemes](#iterm2--color-schemes)
   * [Home Brew](#home-brew)
   * [Nerd Font](#nerd-font)
   * [Oh-My-Zsh Theme and Plugins](#oh-my-zsh-theme-and-plugins)
 * [Activating it all](#activating-it-all)

## My Zsh + Terminal + Font and Theme/Color setup

 - Zsh is installed and changed to via the Oh-My-Zsh installation
 
 - Terminal software is **iTerm2** ( a must terminal for MacOS! )
 
 - Font "**Nerd Font**" it's a combination of all the fancy terminal fonts out there and optimized for Developers and DevOps. 40+ patched fonts, over 3,600 glyph/icons!
 
 - Theme & Color setup is a bit messy but the end-result is nice! For Oh-My-Zsh I use the theme "**powerlevel9k**" and for iTerm2 I use the color scheme "**Blazer**"
 
 - Also I like to notice that I have installed "**Brew**" - The best package manager for MacOS that gives you access to almost all Linux commands!

I would recommend that you visit each of these sites to install things, but I'll try to make it a bit easier for you and list some very basic steps for you to get rollin! Please if individual steps fails they might have changed since I wrote this README.

## Installing it all

### Zsh (Oh-My-Zsh)

Oh-My-Zsh has a very basic and easy installation, you simple use their download/install script in one swoosh - This will also help you setup Zsh and activate it !

Installation via cURL (Most MacOS have this)

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Installation via Wget

    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

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

I by the way, included my background. It's something I found in the Color schemes tarball from a iterm2 fan site (I think). It's nothing crazy, just a soft gradient fabric material, but goes nice with transparent settings! You can get it here: [background.jpg](https://raw.githubusercontent.com/kawaiipantsu/dotrc/master/MacOS/oh-my-zsh/background.jpg)

### Home Brew

Home brew is a package manager for MacOS unix that gives you access to many Linux commands/software in a very familiar and easy way. Like apt-get etc for Debian.

To install Home Brew do the following (taken from their [website](https://brew.sh))
(This also includes the Xcode Command Line Tools step)

Start iTerm2 and do the following

    xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Follow the on-screen instructions if any.
Now lets try and use Brew to install some useful Linux commands!

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

### Nerd Font

First of, if you're not familiar with Nerd Font, you really need to check it out. It's very comprehensive and optimised for developers and likeminded. You can find it [here](https://github.com/ryanoasis/nerd-fonts).

To sum it up fast, it's a combination of over 40 patched fonts for developers like "Meslo", "DejaVu", "GoHu" and so on but also it includes the various icons and symbols that Powerline and other fonts include to make Git, Connectivity and other statues easy to show. Actually they include over 3600 icons/glyphs and symbols in all the fonts.

All in all, this font is pretty much a must if you ask me. No reason to not install it rather than installing separate fonts and missing out on cool glyphs!

To install Nerd Fonts there are two ways, I recommend using HomeBrew as to why we installed it in the previous step! You can also pick out your font manually to install it yourself. I have included both steps.

Via Home Brew ( Recommended! )

    brew tap caskroom/fonts
    brew cask install font-hack-nerd-font

Manually ( Not recommended)

 - Find the font you want under "[Patched-Fonts](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts)"
 - Here is the one I use in my screenshot: [Hack/Knack Regular Complete](https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf)
 - (Install easy way) Click the font file to preview it and choose "Install"
 - (Install via terminal) cp "Hack Regular Nerd Font Complete.ttf" ~/Library/Fonts

### Oh-My-Zsh Theme and Plugins

This is a very nice and custom theme for Oh-My-Zsh and Zsh in general.
I highly recommend it - To see more take a look at their [webpage](https://github.com/bhilburn/powerlevel9k).

To install it for Oh-My-Zsh it's fairly easy, just do the following

    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

To customise the Themed prompt, please go to their website.
Next let's install some of the custom plugins I have enabled in my config .zshrc the rest of the plugins are all included in Oh-My-Zsh.

- zsh-autosuggestions - I like this plugin, it auto suggests previously used commands, hosts and files when you type the command.

To install this plugin use brew

    brew install zsh-syntax-highlighting
    
Also you need to install "fortune" as chucknorris depends on strfile that's included in fortune.

    brew install fortune

Then add the following to your .zshrc or use mine where it all is there!

    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Activating it all

To take use of all the things we have install thus far, we need to make some changes.
You might already have made these changes on the fly when you installed each thing if you could not wait :) But anyway, here is the final steps!!

 - Copy-Paste the content of [.zshrc](https://github.com/kawaiipantsu/dotrc/blob/master/MacOS/oh-my-zsh/.zshrc) into your own file. ( $EDITOR ~/.zshrc )
 
 - Change the font in iTerm2 ( **⌘,** ) under "**Profiles**" -> **Default** -> **Text** set it to *13pt Hack Regular Nerd Font Complete* or *13pt Knack Regular Nerd Font Complete* (if you installed it via brew).
 
 - Set background and transparency in iTerm2 ( **⌘,** ) under "**Profiles**" -> **Default** -> **Window** set Background Image to background.jpg, check "**Keep background Colors opaque**" and enable "**Blur**" then adjust Blur, Transparency and Blending to what you like best. **All my sliders are about 1/3 in**.

**All Done!!**
Restart your iTerm2 terminal, now enjoy and have fun!

