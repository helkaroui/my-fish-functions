function git-master-branch

  set -l isBranchMaster (git branch -a | grep "master" | wc -l)
  set -l isBranchMain (git branch -a | grep "main" | wc -l)

  if test ! $isBranchMaster -eq "0"
    echo "master"
  else if test ! $isBranchMain -eq "0"
    echo "main"
  else 
    echo ""
  end

end