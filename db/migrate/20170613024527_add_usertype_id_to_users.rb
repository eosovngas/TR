class AddUsertypeIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :usertype, index: true, foreign_key: true
  end
end
