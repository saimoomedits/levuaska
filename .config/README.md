# main configiguration files 

as of now there are **9** configs

heres a 'brief' explantion of all of them. 💀 📁 

* **📁 Bspwm** | main wm config
    * |___ ** bspwm_smart_move** | a better way to move windows around in bspwm. 
    * |___ ** bspwmrc** | main bspwm config that gets executed when bspwm is launched
    * |___ **📁 resize** | a better resize for bspwm.
            * |___ ** expandx.sh** | expands windows in the X direction
            * |___ ** expandy.sh** | expands windows in the Y direction
            * |___ ** shrinkx.sh** | shrinks windows in the X direction
            * |___ ** expandy.sh** | shrinks windows in the Y direction
            
* **📁 Dunst** | notification daemon config
      |___ ** dunstrc** | dunst configuration file... 
      
* **📁 Eww** | widgets configuratons files. (I have them seperated into different catogories to keep things simple :) )
      * |___ ** eww.scss** | basically 'themes' for the widgets...
      * |___ ** eww.yuck** | main configuration file of eww.
      * |___ **📁 images** | images that are displayed in some widgets are restored
              * |___ ** profile.png** | profile picture..
              * |___ ** music.png** | fallback music cover art, used when theres no art for the music (like who would play rickroll with that dance move in there).
      * |___ **📁 core** | main directory that stores all variables, widgets. etc
              * |___ **📁 center** | this is like a layout name, i was going to make 2 layouts *"Sidebar" and "Center* but i got bored.. however ill still be making them soon
                       * |___ ** widgets.yuck** | widgets, the things you see on the screen
                       * |___ ** vars.yuck** | variables, definitions of some info like (uptime)
                       * |___ ** defs.yuck** | definitions, defines the widget window name, positions, size, etc
                       * |___ **📁 theme** | remember about eww.scss? *(its literally 8 lines above)*, yes this directory contains the values for it.
                                * |___ ** colors.scss** | colors of different things, change it to anything you like.
                                * |___ ** class.scss** | clsses, deifintions of widget style, colors, font, etc.
      * |___ **📁 scripts** | scripts for the things
                * |___ ** dotfiles** | opens config files.
                * |___ ** mails** | pulls number of emails you got. fill in your credentials.
                * |___ ** music_info** | do I have to explain this?
                * |___ ** notifs** | pulls number of notification using **dunstctl**
                * |___ ** open_links** | opens links in the firefox web browser.
                * |___ ** quote** | qoute...
                * |___ ** sys_info** | system information like (brightness, cpu, volume, etc)
                * |___ ** update.sh** | pulls available updates with **pacman -Qu**
                * |___ ** volume** | i think you know this.
                * |___ ** weather_info** | pulls weather_info from openweathermap.org, get your own key and city ID. Fill it in the required fields.
 
 * **📁 Neofetch** | fetching tool config
      * |___ ** config.conf** | main neofetch config
      * |___ **📁 images** | directory of images for w3m backend, i wont go into this one.
 
 * **Networkmanager_dmenu** | networkmanager_dmenu config. A networkmanager client for rofi/dmenu
      * |___ ** config.ini** | just one file, simple.
     
 * **📁 Picom** | compositor config
      * |___ ** picom.conf** | the only config file. I think everything Should be easy to understand
      * |___ ** .picom.conf** | what... where did this come from?.... lol its a backup. dont mind
      
 * **📁 Polybar** | the bar configs
      * |___ ** config-lev** | main polybar config.
      * |___ ** launch-lev.sh** | launches polybar.
      
 * **📁 Ranger** | file manager config
      * |___ ** rc.conf** | main config file
      * |___ **📁 plugins** | plugins...
      
 * **📁 Sxhkd** | hotkey daemon, yes by default bspwm doesnt support keybinding so you need sxhkd..
      * |___ ** sxhkdrc** | simplest thing I've ever seen in my life.
 
 

