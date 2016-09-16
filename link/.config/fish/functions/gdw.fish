if not set -q GDW_BASE_DIR
    set GDW_BASE_DIR $HOME/src
end

function gdw
  set git_host git.dwarvesf.com
  set -l repo ""

  if [ (count $argv) -ne 2 ]
    echo "USAGE: gdw [user] [repo]"
    return -1
  end

  set user $argv[1]
  set repo $argv[2]

  set -l path $GDW_BASE_DIR/$git_host/$user/$repo
  if not test -d $path
    git clone git@$git_host:$user/$repo.git $path
  end

  cd $path
end
