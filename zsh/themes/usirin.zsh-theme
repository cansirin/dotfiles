local new_line=$'\n'

local clr_fire="%{$fg[red]%}"
local clr_bold_fire="%{$fg_bold[red]%}"

local clr_shadow="%{$fg[magenta]%}"
local clr_bold_shadow="%{$fg_bold[magenta]%}"
local clr_bg_shadow="%{$bg[magenta]%}"

local clr_blonde="%{$fg[yellow]%}"
local clr_bold_blonde="%{$fg_bold[142]%}"

local clr_grass="%{$fg[green]%}"
local clr_bold_grass="%{$fg_bold[green]%}"

local clr_light="%{$fg[white]%}"

local prompt_pwd_color="${clr_light}"
local prompt_git_color=$clr_shadow
local prompt_prompt_color=$clr_shadow

local prompt_git_dirty_color=$clr_blonde
local prompt_git_clean_color=$clr_grass

local prompt_git_dirty="✗"
local prompt_git_clean="✓"

local prompt_prompt="❯ "

local ret_git_dirty="${prompt_git_dirty_color}${prompt_git_dirty}"
local ret_git_clean="${prompt_git_clean_color}${prompt_git_clean}"
local ret_prompt="${prompt_prompt_color}${prompt_prompt}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}${prompt_git_color}:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$reset_color%}${ret_git_dirty}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$reset_color%}${ret_git_clean}%{$reset_color%}"

PROMPT='${prompt_pwd_color}%~$(git_prompt_info) % %{$reset_color%}${new_line}${ret_prompt}%{$reset_color%}'

