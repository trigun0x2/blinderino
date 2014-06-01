class CreateLoginModel < ActiveRecord::Migration
  def up
    create_table :logins do |t|
      t.string :site
      t.string :name
      t.string :username
      t.string :password

      t.timestamps
    end
  end

  def down
  end
end
