require "csv"

class InverterLog < ApplicationRecord
  validates_presence_of :identifier
  validates_presence_of :datetime
  validates_presence_of :energy

  def self.import_csv(csv_file)
    CSV.foreach(csv_file, headers: true) do |row|
      InverterLog.create!(row.to_h)
    end
  end
end
