require_relative 'hotel_room'
require_relative 'administrator'
module Hotel
  class Reservation
    def initialize(guest, start_date, end_date)
      @guest = guest
      @start_date = Date.parse(start_date)
      @end_date = Date.parse(end_date)
      # generate a random room num based on whats available for the timeframe
      @room_num = open_rooms(1)
      @total_cost = stay_price
    end

    def stay_price
      ((@end_date.mday - @start_date.mday) - 1) * 200
    end

    def open_rooms(num_of_rooms)
      reserved_units = []
      rm_units = Hotel::Administrator.room_list
      (num_of_rooms).times do
        reserved_units << rm_units.sample
      end


    end

  end

end
