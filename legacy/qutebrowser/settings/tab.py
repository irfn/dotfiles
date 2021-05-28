## Open new tabs (middleclick/ctrl+click) in the background.
c.tabs.background = False

## Mouse button with which to close tabs.
## Valid values:
##   - right: Close tabs on right-click.
##   - middle: Close tabs on middle-click.
##   - none: Don't close tabs using the mouse.
c.tabs.close_mouse_button = 'none'

## How to behave when the close mouse button is pressed on the tab bar.
## Type: String
## Valid values:
##   - new-tab: Open a new tab.
##   - close-current: Close the current tab.
##   - close-last: Close the last tab.
##   - ignore: Don't do anything.
# c.tabs.close_mouse_button_on_bar = 'new-tab'

## Scaling factor for favicons in the tab bar. The tab size is unchanged, so big favicons also require extra `tabs.padding`.
## Type: Float
c.tabs.favicons.scale = 1.0

## When to show favicons in the tab bar. Valid values: always, never, pinned
c.tabs.favicons.show = 'pinned'

## Padding (in pixels) for tab indicators.
c.tabs.indicator.padding = {'top': 2, 'bottom': 2, 'left': 0, 'right': 4}

## Width (in pixels) of the progress indicator (0 to disable).
c.tabs.indicator.width = 3

## How to behave when the last tab is closed. Valid values: ignore, blank, startpage, default-page, close
c.tabs.last_close = 'startpage'

## Minimum width (in pixels) of tabs (-1 for the default minimum size behavior). This setting only applies when tabs are horizontal. This setting does not apply to pinned tabs, unless `tabs.pinned.shrink` is False.
## Type: Int
# c.tabs.min_width = -1

## When switching tabs, what input mode is applied.
## Type: String
## Valid values:
##   - persist: Retain the current mode.
##   - restore: Restore previously saved mode.
##   - normal: Always revert to normal mode.
# c.tabs.mode_on_change = 'normal'

## Switch between tabs using the mouse wheel.
c.tabs.mousewheel_switching = False

## Position of new tabs opened from another tab. Valid values: prev, next, first, last
c.tabs.new_position.related = 'next'

## Position of new tabs which aren't opened from another tab. Valid values: prev, next, first, last
c.tabs.new_position.unrelated = 'last'

## Padding (in pixels) around text for tabs.
c.tabs.padding = {'top': 4, 'bottom': 4, 'left': 4, 'right': 4}

## Shrink pinned tabs down to their contents.
# c.tabs.pinned.shrink = True

## Position of the tab bar. Valid values: top, bottom, left, right
c.tabs.position = 'top'

## Which tab to select when the focused tab is removed. Valid values: prev, next, last-used
c.tabs.select_on_remove = 'next'

## When to show the tab bar.
## Valid values:
##   - always: Always show the tab bar.
##   - never: Always hide the tab bar.
##   - multiple: Hide the tab bar if only one tab is open.
##   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'always'

## Duration (in milliseconds) to show the tab bar before hiding it when tabs.show is set to 'switching'.
# c.tabs.show_switching_delay = 800

## Open a new window for every tab.
# c.tabs.tabs_are_windows = False

## Alignment of the text inside of tabs. Valid values: left, right, center
c.tabs.title.alignment = 'left'

## Format to use for the tab title. The following placeholders are
## defined:  * `{perc}`: Percentage as a string like `[10%]`. *
## `{perc_raw}`: Raw percentage, e.g. `10`. * `{title}`: Title of the
## current web page. * `{title_sep}`: The string ` - ` if a title is set,
## empty otherwise. * `{index}`: Index of this tab. * `{id}`: Internal
## tab ID of this tab. * `{scroll_pos}`: Page scroll position. *
## `{host}`: Host of the current web page. * `{backend}`: Either
## ''webkit'' or ''webengine'' * `{private}`: Indicates when private mode
## is enabled. * `{current_url}`: URL of the current web page. *
## `{protocol}`: Protocol (http/https/...) of the current web page. *
## `{audio}`: Indicator for audio/mute status.
## Type: FormatString
#c.tabs.title.format = '{audio}{index}: {title}'

## Format to use for the tab title for pinned tabs. The same placeholders like for `tabs.title.format` are defined.
#c.tabs.title.format_pinned = '{audio}{index}'

## Width (in pixels or as percentage of the window) of the tab bar if it's vertical.
# c.tabs.width = '20%'

## Wrap when changing tabs.
# c.tabs.wrap = True
