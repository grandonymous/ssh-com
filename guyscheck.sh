cat sshchat.log > sshchat2.log
tail -n 1 sshchat.log > sshchat-lastline.log
if grep "joined" sshchat-lastline.log > /dev/null
then
echo "New guy come in here!"
cat sshchat-lastline.log
beep -f 800 -l 50 -n -f 1700 -l 50 -n -f 950 -l 50 -n -f 1200 -l 50 -n -f 1700 -n -f 2500 -l 50
else
grep  'left' sshchat-lastline.log > /dev/null
echo "New wall chat"
cat sshchat-lastline.log
beep -f 1200 -l 50 -n -f 1700 -n -f 2500 -l 50 -n -f 800 -l 50 -n -f 1700 -l 50 -n -f 950 -l 50
fi
sleep 4
