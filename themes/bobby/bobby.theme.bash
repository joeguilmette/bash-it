#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX="${purple}:${yellow}"
SCM_THEME_PROMPT_SUFFIX=""

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX="${purple}:${yellow}"
GIT_THEME_PROMPT_SUFFIX=""

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function prompt_command() {
    #PS1="${bold_cyan}$(scm_char)${green}$(scm_prompt_info)${purple}$(ruby_version_prompt) ${yellow}\h ${reset_color}in ${green}\w ${reset_color}\n${green}→${reset_color} "
    #PS1="\n${yellow}$(ruby_version_prompt) ${purple}\u:${purple}\h ${reset_color}in ${green}\w${green}$(scm_prompt_info)\n${green}▶${reset_color} "
    PS1="\n  ${purple}\u:${purple}\h ${reset_color}in ${green}\w${green}$(scm_prompt_info)\n${yellow}▶${reset_color} "
}

PROMPT_COMMAND=prompt_command;
