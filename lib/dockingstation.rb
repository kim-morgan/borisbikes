class DockingStation
	attr_reader :station
    
    def initialize
        @station = []
    end

    def empty?
        @station.length == 0
    end

    def release_bike
        fail "No bikes available" if empty?
        @station.pop()
    end
    
    def full?
        @station.length >= 20
    end

    def dock(bike)
        fail "Station full" if full?
        @station.push(bike)
    end
    private :empty?, :full?
end