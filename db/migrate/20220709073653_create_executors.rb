class CreateExecutors < ActiveRecord::Migration[6.1]
  def change
    create_table :executors do |t|
      t.string :name

      t.timestamps
    end
  end
end
