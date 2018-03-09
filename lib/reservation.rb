require_relative 'hotel_room'
require 'date'
# require_relative 'administrator'
module Hotel
  class Reservation
    attr_reader :guest, :total_cost
    attr_accessor :start_date, :end_date, :room

    def initialize(guest:, start_date:, end_date:)
      @guest = guest
      @start_date = Date.parse(start_date)
      @end_date = Date.parse(end_date)
      # code from date class to validate dates should go here?
      # this code bit can be moved into a date class maybe?
      # generate a random room num based on whats available for the timeframe
      @room = open_rooms(1)
      @total_cost = stay_price
      if @end_date < @start_date
        raise StandardError.new('Invalid reservation dates!')
      end
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
        reserved_unit = rm_units.sample
        if reserved_unit.status == :UNAVAILABLE
          while reserved_unit.status == :UNAVAILABLE
            reserved_unit = rm_units.sample
          end
        end
        reserved_unit.change_status
        reserved_units << reserved_unit
      end
      return reserved_units
    end

  end

end
