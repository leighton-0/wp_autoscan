wpscan --update
read -p $'\e[1;92m List of WordPress sites: \e[0m' wl_pass  # -p flag > prompt
wl_pass="${wl_pass}"

count_pass=$(wc -l $wl_pass | cut -d " " -f1)               #  wordcount lines piped to cut delimitor of space & field of 1st column

for fn in `cat $wl_pass`; do
wpscan --url $fn -e  u,vp  >> result                         # for the site named $fn -e (numerate U (USERS VP vulnerable plugins


done

print "Done, please check result"
