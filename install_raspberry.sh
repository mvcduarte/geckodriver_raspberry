#
# Previous installation:
#
# Raspberry Pi (bulleye 32 bits) + updates
# sudo apt-get install vim
#
# Put install_raspberry.sh requirements_raspberry.txt test_geckodriver.py @ /home/pi/
#
#                                Marcus Duarte - 08/03/2022
#
##############################################################################

# Python

sudo apt-get -y update
sudo apt-get -y upgrade

#  Reference: https://tecadmin.net/how-to-install-python-3-9-on-ubuntu-debian-linuxmint/

#sudo apt install -y wget build-essential libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev  
#wget https://www.python.org/ftp/python/3.9.7/Python-3.9.2.tgz
#tar xzf Python-3.9.2.tgz
#cd Python-3.9.7 
#./configure --enable-optimizations 
#make altinstall 
 
sudo apt-get install -y libssl-dev openssl vim libatlas-base-dev libatlas-base-dev libhdf5-dev libhdf5-serial-dev libatlas-base-dev libjasper-dev libqtgui4 libqt4-test
#sudo apt-get install -y python3
which python

echo '** Python installation completed **'

# Install pip

#sudo apt-get install python3-pip

echo '** Pip installation completed **'

# Install virtualenv

#sudo pip install virtualenv

echo '** Virtualenv installation completed **'

# Create virtualenv

#virtualenv sm_venv
#chmod +x /home/pi/sm_venv/bin/activate
#source /home/pi/sm_venv/bin/activate

echo '** Virtual Environment installation completed **'

#pip install -r requirements_raspberry.txt

echo '** Compile geckodriver for ARM7 **'

# Check https://github.com/Tahlor/geckodriver

#rm -rf mozilla-central*
#curl https://hg.mozilla.org/mozilla-central/archive/tip.zip/testing/ > t.zip
#unzip t.zip
# Install RUST
#curl https://sh.rustup.rs -sSf | sh
# Install some packages before compiling geckodriver
#sudo apt install gcc-arm-linux-gnueabihf libc6-armhf-cross libc6-dev-armhf-cross
#source $HOME/.cargo/env
#rustup target install armv7-unknown-linux-gnueabihf

str_dir_mozilla=`ls | grep 'mozilla-central'`
echo 'directory_mozilla='$str_dir_mozilla

# Put this in testing/geckodriver/.cargo/config:
#echo '[target.armv7-unknown-linux-gnueabihf]' >> ./$str_dir_mozilla/testing/geckodriver/.cargo/config
#echo 'linker = "arm-linux-gnueabihf-gcc"' >> ./$str_dir_mozilla/testing/geckodriver/.cargo/config

#cd $str_dir_mozilla/testing/geckodriver
#cargo build --release --target armv7-unknown-linux-gnueabihf
#sleep 10 

# Copy binary to /usr/local/bin

#sudo cp /home/pi/$str_dir_mozilla/testing/geckodriver/target/armv7-unknown-linux-gnueabihf/release/geckodriver /usr/local/bin/

echo '** Install Firefox **'
#sudo apt-get install firefox-esr

echo '** Install Tesseract + xbvf **'

#sudo apt-get install xvfb
#sudo apt-get install tesseract-ocr

echo '** Test geckodriver **'

/home/pi/sm_venv/bin/python3 crawler_test.py

