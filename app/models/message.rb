class Message < ApplicationRecord
  belongs_to :author   , class_name: 'User'
  belongs_to :recipient, class_name: 'User'

  before_save :instantiate_expire_date, :replace_by_confidential

  PHONE_NUMBER_REGEX = /^(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}$/

  # Have to create a Rake task
  # def self.archived
  #   self.each do |message|
  #     message.statut = 'archive' if message.expire_date == Date.today
  #   end
  # end

  def instantiate_expire_date
    self.expire_date = self.created_at + 3.month
  end

  # def replace_by_confidential
    # check if something in text match with PHONE_NUMBER_REGEX
    # replace only the matching part, by 'confidential'
    # Do the same with an email regex

    # self.text.match(PHONE_NUMBER_REGEX) ? self.text.gsub(PHONE_NUMBER_REGEX, 'confidential') : 'no'
  # end
end

