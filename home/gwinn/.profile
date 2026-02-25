# COMMON
export PAGER=bat
export EDITOR=nvim
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export LESSOPEN='| lessfilter %s'
export LESSHISTFILE=/dev/null

# LIB
export GOPATH=$HOME/.local/lib/go
export CARGO_HOME=$HOME/.local/lib/rust/cargo
export RUSTUP_HOME=$HOME/.local/lib/rust/rustup
export IPYTHONDIR=$HOME/.local/lib/ipython
export RBENV_ROOT=$HOME/.local/lib/rbenv
export GEM_HOME=$HOME/.local/lib/rbenv/gem
export COMPOSER_HOME=$HOME/.local/lib/composer
export COMPOSER_CACHE_DIR=$HOME/.cache/composer
export COMPOSER_DISABLE_XDEBUG_WARN=1
export LIBPQ_ROOT=/opt/homebrew/opt/libpq
export MYSQL_CLIENT=/opt/homebrew/opt/mysql-client
export MAGICK_HOME=/opt/homebrew/opt/imagemagick/

# LOCAL PATHS
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$COMPOSER_HOME/vendor/bin
export PATH=$PATH:$CARGO_HOME/bin
export PATH=$PATH:$GEM_HOME/bin
export PATH=$PATH:$LIBPQ_ROOT/bin
export PATH=$PATH:$MYSQL_CLIENT/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/opt/homebrew/opt/imagemagick/bin

# Python
export PATH="$(brew --prefix)/opt/python@3/bin:$PATH"
export PATH="$(brew --prefix)/opt/python@3/libexec/bin:$PATH"

# PERL
export CPAN_HOME=$HOME/.local/lib/cpan
export CPATH=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Perl/5.34/darwin-thread-multi-2level/CORE/:$CPATH
PATH="/Users/gwinn/.local/lib/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/gwinn/.local/lib/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/gwinn/.local/lib/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/gwinn/.local/lib/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/gwinn/.local/lib/perl5"; export PERL_MM_OPT;

