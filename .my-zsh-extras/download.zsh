#!/bin/zsh

echo "extras=$EXTRAS"
if [ -n "$EXTRAS" ]; then
    #oh-my-zsh PLUGINS
    OMZ="$EXTRAS/omz"
    git clone --depth 1 --filter=blob:none --no-checkout https://github.com/ohmyzsh/ohmyzsh.git $OMZ
    cd $OMZ
    git checkout master -- lib/git.zsh
    git checkout master -- plugins/gitfast
fi
