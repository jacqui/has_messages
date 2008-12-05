class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.column :sender_type, :string, :null => false
      t.column :sender_id, :integer, :null => false
      t.column :subject, :text
      t.column :body, :text
      t.column :state, :string, :null => false
      t.column :hidden_at, :datetime
      t.column :type, :string
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
    end
  end

  def self.down
    drop_table :messages
  end
end
