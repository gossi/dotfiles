# install dotfiles

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `bash` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# installer function
function install {
	installer="$1install.sh";
	
	if [ ! -e $installer ]; then
		return;
	elif [ -x $installer ]; then
		echo -e "\033[33mRunning $installer \033[0m"; 
		#echo "$installer exists";
		$installer
	else
		echo -e "\033[31m$installer not executable \033[0m";
	fi
}

# install brew and git first
install "brew/"
install "git/"
install "node/"

# prepare ~/.profile
rm ~/.profile
touch ~/.profile

echo "# Initial PATH setting" >> ~/.profile
echo 'export PATH="/usr/local/bin:/usr/local/sbin:$PATH";' >> ~/.profile
echo " " >> ~/.profile

# run installers
for file in `ls -d */`
do
	[ $file != "brew/" ] && [ $file != "git/" ] && [ $file != "node/" ] && install $file;

	autoload="${file}autoload"
	if [ -e $autoload ]; then 
		echo "#" >> ~/.profile
		echo "# File: $autoload" >> ~/.profile
		cat $autoload >> ~/.profile
		echo " " >> ~/.profile
	fi
done

# local contributions to .profile
contrib=~/.profile_contrib

if [ -s $contrib ]; then
	echo "# Local contributions" >> ~/.profile
	cat $contrib >> ~/.profile
	echo " " >> ~/.profile
fi

# cleanup
brew cleanup
