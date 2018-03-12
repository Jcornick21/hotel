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
    # this also checks the new_reservation method because if it didnt work
    #  the reservation list would be empty.
    admin = Hotel::Administrator.new
    admin.new_reservation('Liam', '18th April 2018 ', '22nd April 2018')
    admin.new_reservation( 'Mikaila', '12th December 2018','18th December 2018')

    admin.reservation_list.sample.must_be_instance_of Hotel::Reservation

  end

  it "can get total_cost" do
    admin = Hotel::Administrator.new
    admin.new_reservation( 'Mikaila', '12th December 2018','18th December 2018')
    admin.new_reservation('Liam', '18th April 2018 ', '22nd April 2018')
    admin.new_reservation('Miclah', '9th March 2018 ', '11th March 2018')


    name = 'Mikaila'
    name_1 = 'Mikah'

    admin.reservation_cost(name).must_equal 1000
    admin.reservation_cost(name_1).must_equal ' Sorry! We do not have your reservation on file. Please contact customer service.'

  end

  it "can assign rervations with overlapping dates" do
    admin = Hotel::Administrator.new
    res_1 = admin.new_reservation('Liam', '18th April 2018 ', '22nd April 2018')
    res_2 = admin.new_reservation( 'Mikaila', '12th December 2018','18th December 2018')
    res_3 = admin.new_reservation('Miclah', '18th March 2018 ', '22nd March 2018')

    admin.reservation_list.must_include res_2
    admin.reservation_list.must_include res_3
    admin.reservation_list.must_include res_1
  end
end
