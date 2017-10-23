# This migration comes from admin (originally 20171023103602)
class CreateAdminAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_administrators do |t|
      t.string :name

      t.timestamps
    end
  end
end
