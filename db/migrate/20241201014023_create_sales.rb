class CreateSales < ActiveRecord::Migration[8.0]
  def change
    create_table :sales do |t|
      t.decimal :total, precision: 10, scale: 2
      t.boolean :is_canceled, default: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
