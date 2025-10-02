#Pomodoro timer
#Declare a list
typeset -A pomodoro_dict
pomodoro_dict[work_30]=30
pomodoro_dict[work_60]=60
pomodoro_dict[break_10]=10
pomodoro_dict[break_15]=15

#Create a pomodoro timer function

pomodoro()
{
    if [ -n "$1" -a -n "$2" -a -n "${pomodoro_dict[$1_$2]}" ]; then

        echo "⏳ Starting: $1 for ${pomodoro_dict[$1_$2]} minutes" | lolcat -a -d 10 -F 0.3 

        timer "${pomodoro_dict[$1_$2]}"m
    fi
}


alias pomow="pomodoro work 30"
alias pomobr="pomodoro break 10"

# Declare an associative array
# typeset -A pomodoro_dict
# pomodoro_dict[work_30]=30
# pomodoro_dict[work_60]=60
# pomodoro_dict[break_10]=10
# pomodoro_dict[break_15]=15

# # Pomodoro function
# pomodoro() {
#     local key="${1}_${2}"

#     if [[ -n "${pomodoro_dict[$key]}" ]]; then
#         echo "⏳ Starting: $1 for ${pomodoro_dict[$key]} minutes"

#         # Show with lolcat (optional, comment out if issues)
#         echo "$1 for ${pomodoro_dict[$key]} minutes" | lolcat -a -d 10 -F 0.3

#         # Call the timer command
#         timer "${pomodoro_dict[$key]}m"
#     else
#         echo "❌ Invalid session: $1 $2"
#     fi
# }

# # Aliases
# alias pomow="pomodoro work 30"
# alias pomobr="pomodoro break 10"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
