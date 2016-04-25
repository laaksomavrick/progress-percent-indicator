require 'progress_percent'

test = ProgressPercent.new()
 
for i in 0 ... 57643 do
    change = test.calculate_rate_of_progress(i, 57643)
    test.show_progress_percent(change)
    sleep(0.001)
 end

