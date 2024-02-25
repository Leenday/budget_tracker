class CreatePlannedExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :planned_expenses do |t|
      t.string :type
      t.decimal :amount, precision: 8, scale: 2
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
