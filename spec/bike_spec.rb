require 'docking_station'
require 'bike'

describe Bike do
    describe '#working?' do
        it 'responds to working?' do
            expect(subject.working?).to be true
        end
    end
end

