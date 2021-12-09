class DockingStation
attr_reader :bike

    def dock_bike(bike)
        raise 'No capacity available' unless @bike
        @bike = bike
    end

    def release_bike
      raise 'No bikes available' unless @bike
      @bike
    end 
end