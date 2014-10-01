class CreateMaeils < ActiveRecord::Migration
  def change
    create_table :email do |t|
      t.belongs_to :mailbox
      t.integer :sender_id
      t.integer :reply_id
      t.timestamps
    end
  end
end
