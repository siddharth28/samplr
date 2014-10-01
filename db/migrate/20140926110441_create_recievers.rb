class CreateEmailsRecievers < ActiveRecord::Migration
  def change
    create_table :recieved_emails_recievers do |t|
      t.belongs_to :email
      t.belongs_to :mailbox
      t.timestamps
    end
  end
end
