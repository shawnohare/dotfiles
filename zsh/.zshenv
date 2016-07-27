# `.zshenv' is sourced on all invocations of the shell, unless the -f option 
# is set. It should contain commands to set the command search path, plus 
# other important environment variables. `.zshenv' should not contain
# commands that produce output or assume the shell is attached to a tty.
# NOTE http://www.zsh.org/mla/users/2003/msg00600.html, which is included
# in part below:
# Some people insist on setting their PATH here to affect things like ssh.
# Those that do should probably use $SHLVL to ensure that this only happens
# the first time the shell is started (to avoid overriding a customized
# environment).  Also, the various profile/rc/login files all get sourced
# *after* this file, so they will override this value.  One solution is to
# put your path-setting code into a file named .zpath, and source it from
# both here (if we're not a login shell) and from the .zprofile file (which
# is only sourced if we are a login shell).
# if [[ $SHLVL == 1 && ! -o LOGIN ]]; then
#     source ~/.zpath
# fi
#
#


[ -f ~/.profile ] && source ~/.profile

HISTFILE="${XDG_STATE_HOME}/zsh_history"
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

