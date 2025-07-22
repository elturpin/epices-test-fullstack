class InverterLog < ApplicationRecord
  validates_presence_of :identifier
  validates_presence_of :datetime
  validates_presence_of :energy
end
