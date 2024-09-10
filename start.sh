if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Babyotush/vin_d.git /vin_d
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /vin_d
fi
cd /vin_d
pip3 install -U -r requirements.txt
echo "Starting vin_d...."
python3 bot.py
