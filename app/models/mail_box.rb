class MailBox < ActiveRecord::Base
  has_many :contacts
  has_many :friends, through: :contacts, source: 'MailBox'
  has_and_belongs_to_many :recieved_emails, class_name: 'Email'
  has_many :emails
end
