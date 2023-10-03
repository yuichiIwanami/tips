
function fish_right_prompt
  set_color $fish_color_autosuggestion 2> /dev/null; or set_color 555
  fish_vcs_prompt
  set_color normal
end
