class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :text
      t.string :status, default: 'private'
      t.integer :reply_to_message_id
      t.datetime :expire_date
      t.references :author   , null: false, foreign_key: {to_table: :users}
      t.references :recipient, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
