require_relative 'reservation'
require_relative 'hotel_room'
# require 'pry'

module Hotel
  class Administrator
    attr_reader :room_list, :reservation_list

    def initialize
      @room_list = all_rooms
      @reservation_list = []

      if reservation_list == []
        puts "All rooms are available for reservation."
      end
    end

    def available_rooms
      rm_nums = []
      @room_list.each do |room|
        if room.status == nil || room.status == :AVAILABLE
          rm_nums << room.rm_number
        end
        return rm_nums
      end
    end

    def reserved_rooms(res_list, new_res)
      if res_list == []
        return
      else
        res_list.each do |reservation|
          if new_res.start_date == reservation.end_date
            reservation.room.each do |unit|
              unit.status = :AVAILABLE
            end
          end
        end
      end
    end

    # can create reservation
    def new_reservation(name, start_res, end_res)
      # this method should add the newly created reservation to reservation_list
      new_res = Hotel::Reservation.new(guest: name, start_date: start_res, end_date: end_res)
      available_rooms
      reserved_rooms(@reservation_list, new_res)
      booked_res = new_res
      @reservation_list << booked_res
      available_rooms
    end



    # can see total cost of a reservation
    def reservation_cost(res_name)
      @reservation_list.each do |reservation|
        if reservation.guest == res_name
          res_cost = reservation.total_cost
          # puts res_cost
          return res_cost
        elsif reservation.guest != res_name
          return ' Sorry! We do not have your reservation on file. Please contact customer service.'
        end
      end
    end

    def all_rooms
      rooms = []
      20.times do |count|
        room = Hotel::HotelRoom.new(count)
        # room.rm_number = count

        rooms << room
      end
      return rooms
    end

  end #class end
end

# puts Hotel::Administrator.new.room_list
