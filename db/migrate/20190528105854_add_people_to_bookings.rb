class AddPeopleToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :people, :integer
  end
end
