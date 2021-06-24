class Message < ApplicationRecord
  belongs_to :author   , class_name: 'User'
  belongs_to :recipient, class_name: 'User'

  after_create :instantiate_expire_date


  def instantiate_expire_date
    self.created_at + 3.month
  end
end
