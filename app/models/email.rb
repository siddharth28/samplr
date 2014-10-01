class Email < ActiveRecord::Base
  has_and_belongs_to_many :recievers, class_name: 'MailBox'
  has_many :attachments
  has_many :replies, class_name: 'Email', foreign_key :reply_id
  belongs_to :reply, class_name: 'Email'
  belongs_to :sender, class_name: 'MailBox'
end
 