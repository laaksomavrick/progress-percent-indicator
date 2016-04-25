
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
