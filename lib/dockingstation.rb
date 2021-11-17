class DockingStation
	attr_reader :station
    
    def initialize
        @station = []
    end


    def release_bike
        fail "No bikes available" if empty?
        @station.pop()
    end
    

    def dock(bike)
        fail "Station full" if full?
        @station.push(bike)
    end
    
    private
    
    def full?
        @station.length >= 20
    end

    def empty?
        @station.length == 0
    end
end