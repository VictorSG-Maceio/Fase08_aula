class CreateGains < ActiveRecord::Migration[5.2]
  def change
    create_table :gains do |t|
      t.string :description
      t.float :value
      t.date :date
      t.references :user

      t.timestamps
    end
  end
end
