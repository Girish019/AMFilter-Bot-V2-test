
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git https://github.com/Girish019/Alexa-Filter-Bot-V2/tree/MJ
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Alexa_FILTER_BOT 
fi
cd /Alexa_FILTER_BOT 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
