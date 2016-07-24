class CreateContactRequests < ActiveRecord::Migration
  def change
    create_table :contact_requests do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :message
      t.string :from_ip

      t.timestamps
    end
  end
end
