function fish_prompt
    set_color --bold FF963D
    printf " λ "
    set_color --bold white
    printf (prompt_pwd)
    echo -n ' '
end