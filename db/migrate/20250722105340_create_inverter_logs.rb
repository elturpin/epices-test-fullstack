class CreateInverterLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :inverter_logs do |t|
      t.integer :identifier
      t.datetime :datetime
      t.integer :energy

      t.timestamps
    end
  end
end
