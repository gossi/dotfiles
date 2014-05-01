# install dotfiles

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

# prepare ~/.profile
rm ~/.profile
touch ~/.profile

# run installers
for file in `ls -d */`
do
	[ $file != "brew/" ] && [ $file != "git/" ] && install $file;

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
