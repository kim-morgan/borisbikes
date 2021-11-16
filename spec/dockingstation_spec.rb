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
        expect(subject).to respond_to(:bike)
    end
    it "docks something" do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end
    it "returns docked bikes" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
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
	
end