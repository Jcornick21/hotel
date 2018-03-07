require_relative 'hotel_room'
# require_relative 'administrator'
module Hotel
  class Reservation
    attr_reader :guest, :room, :total_cost
    attr_accessor :start_date, :end_date

    def initialize(guest:, start_date:, end_date:)
      @guest = :guest
      @start_date = Date.parse(:start_date)
      @end_date = Date.parse(:end_date)
      # code from date class to validate dates should go here?
      # this code bit can be moved into a date class maybe?
      if @end_date < @start_date
        raise StandardError.new('Invalid reservation dates!')
      end
      # generate a random room num based on whats available for the timeframe
      @room = open_rooms(1)
      @total_cost = stay_price
    end

    def stay_price
      res_start = @start_date
      res_end = @end_date
      cost = ((res_end.mday - res_start.mday) - 1) * 200
      return cost
    end

    def open_rooms(num_of_rooms)
      reserved_units = []
      admin = Hotel::Administrator.new
      rm_units = admin.room_list
      (num_of_rooms).times do
        reserved_units << rm_units.sample
      end
      return reserved_units
    end

  end

end
