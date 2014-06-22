class Click
  include Mongoid::Document

  # Fields
  field :title, type: String
  field :timestamp, type: Time

  # Validations
  validates :title, presence: true
  validates :timestamp, presence: true
end
