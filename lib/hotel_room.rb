# require 'pry'
module Hotel
  class HotelRoom
    attr_accessor :rm_number
    attr_reader :cost_pr_day
    # need to refactor this so it is using hash ? make the data clearer
    def initialize(rm_number)
      @rm_number = rm_number
      @cost_pr_day = 200
      @status = nil
    end

    def change_status
      @status = :UNAVAILABLE
    end
  end
end





#     def all_rooms
#
#       rooms = []
#       20.times do |count|
#         room = Hotel::HotelRoom.new(count)
#         @rm_number = count
#
#         rooms << room
#       end
#       return rooms
#     end

# room = Hotel::HotelRoom
# puts room

# binding.pry
# @room = {
#   rm_number: count, cost_pr_day: 200, status: :AVILABLE
# }

# @rm_number = rm_number
# @cost_pr_day = 200
# @status = :AVILABLE


# def all_rooms
#   rooms = []
#   20.times do
#     rooms << HotelRoom.new
#   end
#   return room
#
# end

# def room_generator
#   all_rooms = []
#   count = 1
#
#   20.times do
#     a_room = {}
#     a_room[:rm_number] = count
#     a_room[:cost_pr_day] = 200
#     a_room[:status] = :AVILABLE
#
#     count += 1
#
#     room = HotelRoom.new()
#   end
