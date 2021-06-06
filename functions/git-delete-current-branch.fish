function git-delete-current-branch

  set -l deleteBranch (git-branch-name)

  if test $deleteBranch = "master" 
     or test $deleteBranch = "main"
    echo "unable to auto delete current branch"
    return
  else
    set -l masterBranch (git-master-branch)

    if test ! $masterBranch = ""
      echo "Checking '$masterBranch' and deleting 'deleteBranch' "

      if confirm
        git checkout $masterBranch
        git branch -d $deleteBranch
      end
    
    else 
      echo "Unable to checkout to master branch."
      return
    end
  end
end