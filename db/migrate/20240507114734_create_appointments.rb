class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :technician, null: false, foreign_key: true
      t.datetime :date
      t.string :service_type
      t.string :status

      t.timestamps
    end
  end
end
