function ssh --description 'Login to vps with tmux'
    if test (count $argv) -ge 1
        switch $argv[1]
            case 'vps'
                command ssh $argv 'tmux new -As \'Arch\''
            case 'clarity*'
                command ssh $argv 'tmux new -As \'Peifeng\''
        end
    else
        command ssh $argv
    end
end
