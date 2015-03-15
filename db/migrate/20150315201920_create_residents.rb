class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :unit
      t.boolean :tower, default: false
      t.string :telephone
      t.string :email
    end
  end
end
