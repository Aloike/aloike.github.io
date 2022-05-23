#!/bin/bash

# This quick and dirty script is no more than a memo.
# References:
# + https://jekyllrb.com/docs/installation/ubuntu/
# + https://jekyllrb.com/docs/installation/



# ok:echo ""
# ok:echo "# ######################################"
# ok:echo "# Install Jekyll dependencies"
# ok:echo "# ######################################"
# ok:
# ok:sudo apt install \
# ok:	ruby-full \
# ok:	build-essential \
# ok:	zlib1g-dev


if ! [[ `grep 'GEM_HOME' ~/.bashrc` ]]
then
	echo ""
	echo "# ######################################"
	echo "# Set up a RubyGems installation dir for this user"
	echo "# ######################################"

	echo -e '\n\n# Install Ruby Gems to ~/.local/var/lib/gems' >> ~/.bashrc
	echo 'export GEM_HOME="$HOME/.local/var/lib/gems"' >> ~/.bashrc
	echo 'export PATH="$HOME/.local/var/lib/gems/bin:$PATH"' >> ~/.bashrc
fi

# Reload bashrc
#source ~/.bashrc
##  @see    https://askubuntu.com/a/1041348/703519
eval "$(cat ~/.bashrc | tail -n +10)"


echo ""
echo "# ######################################"
echo "# Install Jekyll and Bundler"
echo "# ######################################"

echo "in bashrc:"
grep -i gem ~/.bashrc
echo -e "\nin env:"
env|grep -i gem

echo "variable GEM_HOME=${GEM_HOME}"

# echo "running as ${USER}..."
# su ${USER} -c 'gem install jekyll bundler'
gem install jekyll bundler

