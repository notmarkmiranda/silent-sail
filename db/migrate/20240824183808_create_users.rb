class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :email, index: { unique: true, name: 'unique_emails' }
      t.string :password_digest
      t.string :nickname

      t.timestamps
    end
  end
end
