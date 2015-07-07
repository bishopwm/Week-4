class AddEmailAndPhoneToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :email, :string
    add_column :contacts, :phone_number, :integer
  end
end
