class ApplicationController < ActionController::Base
  protect_from_forgery

  def headshot_custom_file_path
    file_name = "headshot_#{Time.now.to_i}.jpg"
    File.join(Rails.root, 'public', 'headshots', file_name)
  end

  def headshot_post_save(file_path)
    @headshot_photo = HeadshotPhoto.new
    @headshot_photo.image = File.new(file_path)
    @headshot_photo.save
  end
end
