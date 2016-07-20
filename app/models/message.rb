class Message
  include ActiveModel::Model
  # Attributes (DSL provided by Virtus)
  attr_accessor :name, :phone, :comment
  PHONE_NUMBER = /\A\d{3}-\d{3}-\d{4}\z/
  validates :name, presence: true, length: { maximum: 20 }
  validates :phone, presence: true, numericality: true, length: { minimum: 7, maximum: 15 }
  validates :comment, length: { maximum: 200 }
end
