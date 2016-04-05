# Append to .tmux.conf
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo 'Writing/appending tmux config to ~/.tmux.conf'
[ -f ~/.tmux.conf ] && cat $SCRIPTDIR/tmux/conf >> ~/.tmux.conf
[ ! -f ~/.tmux.conf ] && cp $SCRIPTDIR/tmux/conf ~/.tmux.conf
