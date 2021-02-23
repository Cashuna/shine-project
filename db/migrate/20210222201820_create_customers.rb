class CreateCustomers < ActiveRecord::Migration[6.1]
  def up
    create_table :customers do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :username, null: false
      t.string :email, null: false

      t.timestamps null: false
    end
    
    add_index :customers, :username, unique: true
    add_index :customers, :email, unique: true
  end

  def down
    drop_table :customers, :if_exists => true
  end
end
