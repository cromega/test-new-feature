class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :address
      t.string :postcode
      t.timestamps
    end
  end
end
