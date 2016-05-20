# Add cron jobs, only add jobs that do not exist in `crontab -l`

# Ubuntu-only stuff. Abort if not Ubuntu.
is_ubuntu || return 1

# declare an array of cronjobs
declare -a arr=(
  "0 6 * * * /usr/local/bin/atom-update > /var/log/cron.log 2>&1"
)

# now loop through the above array
# http://stackoverflow.com/questions/8880603/loop-through-array-of-strings-in-bash-script
# http://stackoverflow.com/questions/8748831/when-do-we-need-curly-braces-in-variables-using-bash
for i in "${arr[@]}"
do
  current_jobs=$(crontab -l)
  # http://stackoverflow.com/questions/229551/string-contains-in-bash
  # http://stackoverflow.com/questions/878600/how-to-create-cronjob-using-bash
  (echo "$current_jobs"; [[ ! $current_jobs == *"$i"* ]] && echo "$i") | crontab -
done

unset current_jobs
