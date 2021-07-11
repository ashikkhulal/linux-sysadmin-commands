#!/bin/bash

# Simple Git Log Fetch Script

DATE=$(date +"%m-%d-%y")
echo -n "Enter the branch you want the log of: "
read -r a
git checkout $a || exit_code=$?

if [[ "${exit_code}" -eq 0 ]]; then
    echo -e "--------------------- Logs of branch [$a] on $DATE ---------------------\n" >> ./gitcommit.log
    git log --pretty=format:'Commit #%h by %an about %ar with message: %s' >> ./gitcommit.log
    echo -e "\n\n--------------------------------------- END OF SCM LOG ---------------------------------------\n\n" >> ./gitcommit.log
    echo "Success! The SCM Log for branch [$a] can be found in ./gitcommit.log"
else
    echo "Branch [$a] could not be found!"
fi
