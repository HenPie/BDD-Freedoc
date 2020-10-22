class AddCityIndex < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :city, foreign_true: true 
    add_reference :doctors, :city, foreign_true: true
    add_reference :patients, :city, foreign_true: true
  end
end
