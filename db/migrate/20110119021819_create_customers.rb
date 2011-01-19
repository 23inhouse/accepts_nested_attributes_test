class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.integer :account_id
      t.boolean :vip

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
