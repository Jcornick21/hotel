require_relative 'reservation'
require_relative 'hotel_room'
# require 'pry'

module Hotel
  class Administrator
    attr_reader :room_list, :reservation_list

    def initialize
      @room_list = all_rooms
      @reservation_list = []
    end
    # must access list of rooms
    # must access list of reservations
    # can create reservation

    # def new_reservation
    # this method should add the newly created reservation to reservation_list
    #
    # end
    # can see total cost of a reservation

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
