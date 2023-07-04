class CreateActialExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :actial_expenses do |t|
      t.string :type
      t.string :comment
      t.decimal :amount, precision: 8, scale: 2
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
