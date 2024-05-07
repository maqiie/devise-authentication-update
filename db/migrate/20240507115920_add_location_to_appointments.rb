class AddLocationToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :latitude, :float
    add_column :appointments, :longitude, :float
  end
end
