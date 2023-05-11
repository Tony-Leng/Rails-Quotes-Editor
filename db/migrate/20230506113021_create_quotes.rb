class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.string :name, null: false #constraint to name value, validation for never storing an empty quote

      t.timestamps
    end
  end
end
