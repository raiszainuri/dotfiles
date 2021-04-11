function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    if test "$USER" = 'root'
        echo -n (set_color red)'# '
    end
    echo -n (set_color red)''
    set_color normal
end

function ...
    clear
    echo "                         _ [?25l[?7l[0m[34m[1m  _            [38;5;15m[1m               
   _____      _____  ___| |_[?25l[?7l[0m[34m[1m| | ___  __ _ _ __ _ __[38;5;15m[1m                        
  / __\ \ /\ / / _ \/ _ \ __[?25l[?7l[0m[34m[1m| |/ _ \/ _` | '__| '_ \[38;5;15m[1m                       
  \__ \\\ V  V /  __/  __/ |_[?25l[?7l[0m[34m[1m| |  __/ (_| | |  | | | |[38;5;15m[1m                     
  |___/ \_/\_/ \___|\___|\__[?25l[?7l[0m[34m[1m|_|\___|\__,_|_|  |_| |_|[38;5;15m[1m                      
[0m [?25h[?7h       "                 

    cat ~/.config/MySetting/nf.txt
end

function pp
    bpytop
end

function :q
    exit
end

function vim
    nvim
end

function v
    nvim
end

function syn!
    shutdown now
end

function notif
    pkill dunst
    notify-send "Percobaan notifikasi dunst"
    notify-send "Percobaan kedua notifikasi dunst"
end

function gis
    git status
end

function gip
    git push
end

function sr
    mousepad ~/.config/reminder.txt
end 