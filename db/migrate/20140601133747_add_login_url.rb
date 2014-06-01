class AddLoginUrl < ActiveRecord::Migration
  def up
    add_column :logins, :login_url, :string
  end

  def down
  end
end
