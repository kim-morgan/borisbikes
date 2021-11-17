require 'dockingstation'

describe DockingStation do
	it "release_bike method exists" do
        expect(subject).to respond_to :release_bike
    end
    xit "gets a bike" do
        expect(subject.release_bike).to be_an_instance_of(Bike) 
    end
    xit "expects bike to be working" do
        expect(subject.release_bike.working?).to eq(true)
    end
    it "docks a bike" do
        expect(subject).to respond_to(:dock).with(1).argument
    end
    it "shows status of station" do
        expect(subject).to respond_to(:station)
    end
    
    it "returns docked bikes" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.station).to eq subject.station
    end
    describe "#release_bike" do
        it "releases a bike" do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end
        it "raises an error when there are no bikes available" do
            expect {subject.release_bike}.to raise_error "No bikes available"
        end
    end

    it "Creates a station with a user defined capacity" do
        expect{DockingStation.new(1,2)}.to raise_error(ArgumentError)
    end

    describe "#dock" do
        it "docks something" do
            bike = Bike.new
            expect(subject.dock(bike)).to eq subject.station
        end

        it "raises an error when there is already 20 bikes at the docking station" do
            station = DockingStation.new
            station.capacity.times { station.dock Bike.new }
            expect {station.dock(Bike.new)}.to raise_error "Station full"
        end
 
    end
        it "should have a default capacity of 20" do
            expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
        end
    
    describe "initialization" do
        it "has a variable capacity" do
            docking_station = DockingStation.new(50)
            50.times {docking_station.dock(Bike.new)}
            expect {docking_station.dock(Bike.new)}.to raise_error "Station full"
        end
    end
end