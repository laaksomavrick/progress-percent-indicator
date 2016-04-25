# Progress-percent-indicator
This is a simple gem which outputs the current percentage between a value and a specified ceiling. 
Intended use is for command line tools (ie, downloading a file, doing some calculations, whatever).

# Installation

1. Add it to your gemfile and run `bundle install` or simply require it.
```ruby
gem "progress_percent"
```
```ruby
require 'progress_percent'
```

# Usage

Essentially, use `calculate_rate_of_progress` between the current value representation of progress and the ceiling of that representation.
If this was being used alongside downloading a file, the function params might be `(current_downloaded_amount, filesize)`

Then, call `show_progress_percent` to present the display.

```ruby
require 'progress_percent'

test = ProgressPercent.new()
 
for i in 0 ... 57643 do
    change = test.calculate_rate_of_progress(i, 57643)
    test.show_progress_percent(change)
    sleep(0.001)
 end
 ```
