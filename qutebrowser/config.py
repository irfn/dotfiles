# Inspired/Copied from https://github.com/tonooo71/dotfiles/blob/master/.config/qutebrowser/config.py
config.source('qutemacs/qutemacs.py')
config.source('settings/tab.py')
config.source('settings/fonts.py')
config.source('settings/search.py')
config.source('theme/theme.py')

c.statusbar.hide = False
c.editor.command = ['/usr/local/bin/emacsclient', '-c', '{file}']
c.url.start_pages = ['file:///Users/irfn/dev/gojek/kernel/brain/todo.html']
c.zoom.levels = ['50%', '75%', '100%', '125%', '150%', '200%']
## List of widgets displayed in the statusbar.
## Valid values:
##   - url: Current page URL.
##   - scroll: Percentage of the current page position like `10%`.
##   - scroll_raw: Raw percentage of the current page position like `10`.
##   - history: Display an arrow when possible to go back/forward in history.
##   - tabs: Current active tab, e.g. `2`.
##   - keypress: Display pressed keys when composing a vi command.
##   - progress: Progress bar for the current page loading.
c.statusbar.widgets = ['keypress', 'url', 'history', 'tabs', 'progress']
## Padding (in pixels) for the statusbar.
c.statusbar.padding = {'top': 4, 'bottom': 4, 'left': 4, 'right': 4}
c.content.headers.do_not_track = True
c.completion.quick = True
c.completion.show = 'always'
CSS = '~/.config/qutebrowser/gruvbox-all-sites.css'
config.bind('<cmd-i>', f'config-cycle content.user_stylesheets {CSS} ""')
