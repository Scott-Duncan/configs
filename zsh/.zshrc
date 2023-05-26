# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#source ~/Libraries/zsh_plugs/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster" # set by `omz`
ZSH_THEME="pi" # set by `omz`
setxkbmap -option caps:escape
setxkbmap us 
#~/Libraries/qfetch/target/release/qfetch
# neofetch

# save path on cd
function cd {
    builtin cd $@
    pwd > ~/.last_dir
}

# restore last saved path
if [ -f ~/.last_dir ]
    then cd `cat ~/.last_dir`
fi

# source ros 

function src_ros {
  source /home/scott/Libraries/ros2_external_libraries/install/local_setup.zsh
  source /opt/ros/galactic/setup.zsh
  source /usr/share/colcon_cd/function/colcon_cd.sh
  export _colcon_cd_root=/opt/ros/galactic/ 
  source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh
  source /home/scott/ros2_ws/install/local_setup.zsh 
}

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  sudo
  git
  z
  colors
  zsh-autosuggestions
  zsh-syntax-highlighting
  zaw
)

source $ZSH/oh-my-zsh.sh

bindkey -v 

bindkey '^n' autosuggest-accept
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search

bindkey '^ ' accept-line

bindkey '^r' zaw-history
bindkey '^b' zaw-git-branches

# -- Sources
src_ros
export ROS_DOMAIN_ID=4

# -- Exports for cmake and CUDA 
#
# export EDITOR=/usr/local/bin/nvim 
# export PATH=/home/scott/Libraries/CMake/install/bin:$PATH
# export PATH=/home/scott/Libraries/diff-so-fancy:$PATH
export PATH=/usr/local/cuda-11.7/bin:$PATH
export CMAKE_PREFIX_PATH=/usr/local/lib/cmake/:$CMAKE_PREFIX_PATH
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/CMake/install:$CMAKE_PREFIX_PATH
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/json/install/:$CMAKE_PREFIX_PATH 
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/opencv/install:$CMAKE_PREFIX_PATH
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/magma-2.5.4/install:$CMAKE_PREFIX_PATH
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/pytorch/install:$CMAKE_PREFIX_PATH
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/vision/install:$CMAKE_PREFIX_PATH
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/FunctionalPlus/install:$CMAKE_PREFIX_PATH
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/frugally-deep/install:$CMAKE_PREFIX_PATH
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/rtabmap/install:$CMAKE_PREFIX_PATH
# export CMAKE_PREFIX_PATH=/home/scott/Libraries/yaml-cpp/install:$CMAKE_PREFIX_PATH

# User configuration
#
export EDITOR=/usr/local/bin/nvim 
export VISUAL=/usr/local/bin/nvim 
export PATH=$PATH:/home/scott/.spicetify
export spotify_path=snap/spotify/64/usr/share/spotify/

#autocomplete for ros2 and colcon
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete3 ros2)"
eval "$(register-python-argcomplete3 colcon)"

alias rf="exec zsh"
alias ws="cd ~/ros2_ws"
alias ews="nvim ~/ros2_ws/src/kisui_driver/kisui_core"
alias sshkitty=" kitty +kitten ssh"
alias colcon_ws="
ws ;
source /home/scott/Libraries/ros2_external_libraries/install/local_setup.zsh;
colcon build --continue-on-error --symlink-install  --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=1;
source /home/scott/ros2_ws/install/local_setup.zsh ;
"

alias colcon_clean="
ws ; 
rm -rf build install log;
source /home/scott/Libraries/ros2_external_libraries/install/local_setup.zsh;
"

check_temp () {
 paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/' | grep x86_pkg_temp
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

