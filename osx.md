Homebrew

```console
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```console
brew update
```

Vim

```console
brew edit vim
```

```diff
system "./configure", "--prefix=#{HOMEBREW_PREFIX}",
                      "--mandir=#{man}",
                      "--enable-multibyte",
                      "--with-tlib=ncurses",
                      "--enable-cscope",
                      "--enable-terminal",
                      "--with-compiledby=Homebrew",
+                     "--enable-clipboard",
                      "--enable-perlinterp",
                      "--enable-rubyinterp",
                      "--enable-python3interp",
                      "--enable-gui=no",
                      "--without-x",
                      "--enable-luainterp",
                      "--with-lua-prefix=#{Formula["lua"].opt_prefix}"
```

```console
brew install vim
```
