#!bin/bin/bash
USR='devops'
for host in `cat remhosts`;
do
echo "Connecting to $host"
echo "-------------------------------------------------------------------------"
echo "Pushing script to $host"
echo "-------------------------------------------------------------------------" 
scp mutlios.sh $USR@$host:/tmp/   #Copy mutlios.sh to /tmp/ directory on remote host means devops user web01,web02,web03
echo "Running script on $host"
ssh $USR@$host sudo /tmp/multios.sh #Run the script on remote host
ssh $USR@$host sudo rm -rf /tmp/multios.sh #Remove the script from remote host
done