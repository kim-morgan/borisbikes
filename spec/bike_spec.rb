require "bike"

describe Bike do
    it "Working method exists for bike" do
        expect(subject).to respond_to :working?
    end
    it "Can check bike is docked" do
        expect(subject).to respond_to :docked?
    end
end