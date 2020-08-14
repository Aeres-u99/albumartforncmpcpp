# Album Art for mpd+ncmpcpp

First of all, its not official. Second of all its very very buggy, and very hacky. But hey! it works. Before we start on how and why, its important to see what it looks like.

![](/home/akuma/SoopaProject/albumartforncmpcpp/scrot.png)

Bottom right, left panel is ncmpcpp and right is the albumart. 

#### Dependencies

1. kunst [GitHub - sdushantha/kunst: 🖼️ Download and display album art or display embedded album art](https://github.com/sdushantha/kunst)

2. intotify-tools for inotify-wait

3. ueberzug [GitHub - seebye/ueberzug: ueberzug is an alternative for w3mimgdisplay](https://github.com/seebye/ueberzug)

4. mpd+ncmpcpp, its a script specifically for this. 

### Installation

1. Clone the repo `git clone pewpewlink`

2. Copy the image.sh to` ~/.ncmpcpp` , if you want to modify this you will have to make changes inside the `tmux_sessions` file

3. Move `tmux_session` to `~/.ncmpcpp`, now you should have three files, image.sh, your ncmpcpp config and tmux_session in there.

4. Create an alias to launch stuffs, `alias music='tmux new-session "tmux source-file ~/.ncmpcpp/tmux_session"'` this is basically for ease of launching and also to create the very specific style.

5. Hopefully, the image.sh is chmoded, if not just `chmod +x image.sh`

#### Usage

1. Launch mpd, by running `mpd -v`

2. Adjust the terminal (do it before launching music, currently images don't scale well and they are not very happy with tmux)

3. Launch music, it should create panels, and launch the image.sh file. Hopefully something is playing in your mpd, if not give it a try.

4. Close the sxiv window that pops up when you launch kunst. And enjoy the albumart

#### Debugging

1. Look into scripts and see if any of the messages are actually being displayed

2. Sometimes it just doesn't works, so take a cup of coffee and hope it does. 

3. Check /tmp thats where most of the things are, if it still does not works launch kunst manually and see what happens

#### Why?

1. Aesthetically pleasing, infact very good looking. 

2. w3mimgdisplay doesnt works :( 

3. Existing solutions used existing covers, but didnt try to download from internet so kunst is a better alternative.

#### Contributing

Look into the code and work on it, if you find something buggy and suggest a **WORKING CODE** it will be great, if you want a new feature just create a pull request. Hopefully it will be implemented. 



#### Credits

My code is mostly the copy pasta from [.ncmpcpp · master · sourplum / dotfiles · GitLab](https://gitlab.com/sourplum/dotfiles/tree/master/.ncmpcpp) Look into his version and if his works go for it. Kudos to this guy btw!

#### Social

@ricingonlinux on Telegram
