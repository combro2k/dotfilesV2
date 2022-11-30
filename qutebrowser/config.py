import os.path

config.load_autoconfig(True)
c.aliases = {'q': 'close', 'qa': 'quit', 'w': 'session-save', 'wq': 'quit --save', 'wqa': 'quit --save'}
c.auto_save.session = False
c.content.headers.accept_language = 'en-US,en;q=0.5'
c.content.headers.custom = {'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'}
c.content.headers.do_not_track = True
c.content.headers.user_agent = 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0'
config.set('content.javascript.enabled', True, 'file://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
c.content.plugins = True
c.content.webgl = True
c.scrolling.bar = 'always'
c.tabs.background = True
c.tabs.show = 'always'
c.url.default_page = 'qute://bookmarks'
c.url.searchengines = {'DEFAULT': 'https://www.google.com/search?q={}', 'd': 'https://duckduckgo.com/?q={}'}
c.url.start_pages = 'qute://bookmarks'

# Bindings for normal mode
config.bind('<Alt+d>', 'set-cmd-text -s :open')
config.bind('<Ctrl+d>', 'set-cmd-text -s :bookmark-add')
config.bind('O', 'set-cmd-text :open {url:pretty}')
config.bind('b', 'set-cmd-text -s :buffer')
config.bind('cc', 'tab-close')
config.bind('gT', 'tab-prev')
config.bind('gi', 'hint inputs')
config.bind('gt', 'tab-next')
config.bind('h', 'tab-prev')
config.bind('l', 'tab-next')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('tt', 'open -t')
config.bind('w', 'set-cmd-text -s :open -w')
config.bind('ww', 'open -w')
config.bind('<Ctrl+Shift+i>', 'inspector')
config.bind('<Ctrl+0>', 'zoom 100')
config.bind('<Ctrl+->', 'zoom-out')
config.bind('<Ctrl+=>', 'zoom-in')

# Bindings for insert mode
config.bind('<Ctrl+i>', 'open-editor', mode='insert')

# Bindings for passthrough mode
config.bind('<Ctrl+g>', 'leave-mode', mode='passthrough')

# meh this is annoying and unsafe but we want a seperate theme python file :-/
if os.path.exists(str(config.configdir / 'theme.py')):
  exec(open(str(config.configdir / 'theme.py')).read()) 
