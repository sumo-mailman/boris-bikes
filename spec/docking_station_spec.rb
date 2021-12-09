require 'docking_station'
require 'bike'


describe DockingStation do

  describe "#release_bike" do
    docking_station = DockingStation.new
    it { is_expected.to respond_to(:release_bike) }
  end

  describe "releases a bike" do
    it { is_expected.to respond_to(:release_bike) }
  end 

  it "throws error if no bike to release" do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end


  describe "#dock_bike" do
    it { is_expected.to respond_to(:dock_bike)}
  end

    it "adds a Bike object into @dock" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end
  
  describe "#dock_bike" do
    it "doesn't accept more bikes than capacity" do
      expect { subject.dock_bike(bike) }.to raise_error 'No capacity available'
    end
  end

end

describe Bike do
  it { is_expected.to respond_to :working? }
end