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

  def self.all_unique_days
    all_datetime = InverterLog.select(:datetime).distinct.order(datetime: :asc).pluck(:datetime)
    all_datetime.map { | dateTime | dateTime.to_date }.uniq
  end
end
