class Login < ActiveRecord::Base
  attr_accessible :site, :name, :password, :username
end
