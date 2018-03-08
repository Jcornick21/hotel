require_relative 'spec_helper'

describe 'Administrator class' do
  it "creates an array of rooms" do
    admin = Hotel::Administrator.new

    admin.room_list.must_be_kind_of Array

  end

  it "can access individual rooms" do
    admin = Hotel::Administrator.new

    rm_1 = admin.room_list
    rm_2 = rm_1

    rm_1[0].rm_number.must_equal 0
    rm_2[1].rm_number.must_equal 1


  end

  it "can access a list of reservations" do
    admin = Hotel::Administrator.new

    admin.reservation_list.must_be_kind_of Array

  end

  it "reservation_list contains instances of reservation" do
    admin = Hotel::Administrator.new
    admin.new_reservation( 'Mikaila', '12th December 2018','18th December 2018')

    admin.reservation_list.sample.must_be_instance_of Hotel::Reservation

  end
end
