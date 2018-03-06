require_relative 'spec_helper'

describe 'hotel_room class' do
  it "creates an instance of a room" do
    room = Hotel::HotelRoom.new(17)

    room.must_be_instance_of Hotel::HotelRoom

  end

  it "has a cost and room number" do
    room = Hotel::HotelRoom.new(20)

    room.rm_number.must_be_kind_of Integer
    room.cost_pr_day.must_equal 200

  end
end
