
class ProgressPercent

    attr_reader :progress

    def initialize()
        @progress = 0
    end

    def show_progress_percent(change)
        set_progress(change)
        progress_out = (@progress * 100).to_int
        print "% #{progress_out}\r"
    end

    def set_progress(change)
        @progress = change
    end

    def calculate_rate_of_progress(current, max)
        Float(current) / Float(max)
    end

end

test = ProgressPercent.new()

for i in 0 ... 57643 do
    change = test.calculate_rate_of_progress(i, 57643)
    test.show_progress_percent(change)
    sleep(0.001)
end
