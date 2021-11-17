class DockingStation
    DEFAULT_CAPACITY = 20
	attr_reader :station, :DEFAULT_CAPACITY, :capacity
    
    def initialize(capacity = DEFAULT_CAPACITY)
        @station = []
        @capacity = capacity
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
        @station.length >= @capacity
    end

    def empty?
        @station.length == 0
    end
end