class CreateJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.belongs_to :speciality 
      t.belongs_to :doctor
    end
  end
end
