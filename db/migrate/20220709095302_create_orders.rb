class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :client_name
      t.datetime :order_date
      t.belongs_to :executor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
