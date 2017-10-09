hostname=$@  #This will take the ip addresses as an input from the user
username=root  #username is root, this can be anything

for i in $(echo $hostname | sed "s/,/ /g"); do   #This will take the argument (comma seperated)
  ssh $username@$i "hostname -I | cut -d ' ' -f2  ;uptime | grep -ohe '"load average[s:][: ].*"'"  #It wil show the uptime and load average output on login
done
