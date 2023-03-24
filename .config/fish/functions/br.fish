function br --wraps='git checkout' --description='eee TODO finish this'
    # TODO for now this has "master" hard-coded as the main branch -- should be smarter
    if [ -z "$argv[1]" ]
        git branch
    else
        set -l branch_name "$argv[1]"
        if not string match "$FISH_FUNCTION_BR__BRANCH_NAME_PREFIX*" "$branch_name"
            set branch_name "$FISH_FUNCTION_BR__BRANCH_NAME_PREFIX$branch_name"
        end

        git checkout master
        git pull
        git branch $branch_name 2>/dev/null || true  # if it exists, whatever
        git checkout $branch_name
        git merge --ff-only master
    end
end
