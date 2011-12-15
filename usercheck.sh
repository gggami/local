username=`whoami`
if [ ${username} != "hoge" ]
then
    echo 'You are not "hoge" !'
    exit 1
fi
