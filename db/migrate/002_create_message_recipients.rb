class CreateMessageRecipients < ActiveRecord::Migration
  def self.up
    create_table :message_recipients do |t|
      t.column :message_id, :integer, :null => false
      t.column :receiver_type, :string, :null => false
      t.column :receiver_id, :integer, :null => false
      t.column :kind, :string, :null => false
      t.column :position, :integer
      t.column :state, :string, :null => false
      t.column :hidden_at, :datetime
    end
    add_index :message_recipients, [:message_id, :kind, :position], :unique => true
  end
  
  def self.down
    drop_table :message_recipients
  end
end
