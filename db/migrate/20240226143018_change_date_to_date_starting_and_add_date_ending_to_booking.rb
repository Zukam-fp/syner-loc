class ChangeDateToDateStartingAndAddDateEndingToBooking < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :date, :date_starting
    add_column :bookings, :date_ending, :date
  end
end
