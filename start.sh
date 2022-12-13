if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MN-BOTZ/KAMMARAN_the_file_patron.git /KAMMARAN_the_file_patron
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KAMMARAN_the_file_patron
fi
cd /KAMMARAN_the_file_patron
pip3 install -U -r requirements.txt
echo "Starting KAMMARAN_the_file_patron...."
python3 bot.py
