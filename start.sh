if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Shift-Wace/Wacefilterbot.git /Wacefilterbot
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Wacefilterbot
fi
cd /Wacefilterbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
