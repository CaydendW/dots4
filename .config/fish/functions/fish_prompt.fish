function fish_prompt
    echo -n [(whoami)'@'(uname -n)':' (string replace -r "/home/$USER" "~" (bash -c 'pwd'))]'$ '
end

