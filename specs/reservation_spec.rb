require_relative 'spec_helper'


describe 'Reservation class' do
  it "creates a reservation" do
    reservation = Hotel::Reservation.new(
      guest: 'John', start_date: '8th March 2018', end_date: '10th March 2018'
    )

    reservation.must_be_instance_of Hotel::Reservation

  end

  it "the reservation must have a room" do
    reservation = Hotel::Reservation.new(
      guest: 'Malcom', start_date: '12th May 2018', end_date: '14th May 2018'
    )

    room = reservation.room

    room[0].must_be_instance_of Hotel::HotelRoom

  end

  it "the reservation must have a start and end" do
    reservation = Hotel::Reservation.new(
      guest: 'Terri', start_date: '8th April 2018', end_date: '12th April 2018'
    )

    reservation.start_date.mday.must_equal 8
    reservation.end_date.mday.must_equal 12

  end

  it "the reservation must have a total cost" do
    reservation = Hotel::Reservation.new(
      guest: 'Asrah', start_date: '6th October 2018', end_date: '9th October 2018'
    )

    reservation.total_cost.must_equal 400

  end

  it "handles invalid start date and end_date" do
    proc {
     Hotel::Reservation.new(guest: 'Asrah', start_date: '9th October 2018', end_date: '6th October 2018')
    }.must_raise StandardError
  end
end
