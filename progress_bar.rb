progress = 0
barwidth = 50

while (progress < 1.0) do

    progress += 0.01

    print "["
    position = barwidth * progress 
    position.to_i

    for i in 0 ... barwidth do
        if (i < position)
            print "="
        else
            print " "
        end
    end

    progress_out = (progress * 100).to_int
    print "] % #{progress_out}\r"

    sleep(0.1)

end

puts "\nDone!"
