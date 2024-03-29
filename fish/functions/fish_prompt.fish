# name: Classic + Vcs
# author: Lily Ballard

function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -l normal (set_color normal)

    # Color the prompt differently when we're root
    set -l color_cwd blue # $fish_color_cwd
    set -l prefix
    set -l suffix '$'
    if contains -- $USER root toor
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

    # If we're running via SSH, change the host color.
    set -l color_host $fish_color_host
    if set -q SSH_TTY
        set color_host $fish_color_host_remote
    end

    # Write pipestatus
    set -l prompt_status (__fish_print_pipestatus " [" "]" "|" (set_color $fish_color_status) (set_color --bold $fish_color_status) $last_pipestatus)

    # show full pwd
    set -U fish_prompt_pwd_dir_length 0

    echo -n -s \n (set_color $fish_color_user) "$USER" @ (prompt_hostname) $normal ' ' (set_color $color_cwd) (prompt_pwd) $normal $prompt_status \n $suffix " "
end

