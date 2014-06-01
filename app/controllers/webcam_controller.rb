class WebcamController < ApplicationController
  helper :headshot
  def index
  end

  def create
  end

  def new
  end

  def destroy
  end

  def show
  end

  def compare
    file1 = '/Users/trigun0x2/Dropbox/Projects/blinderino/public/headshots/' + HeadshotPhoto.last.image_file_name
    file2 = '/Users/trigun0x2/Dropbox/Projects/blinderino/public/headshots/' + HeadshotPhoto.last(2).first.image_file_name
    img1 = Phashion::Image.new(file1)
    img2 = Phashion::Image.new(file2)
    @dupe = img1.duplicate?(img2, threshold: 15)

    if @dupe == true
      login = Login.find_by_site(params['site'])
    else
      login = nil
    end
    render json: [@dupe, login]

  end

  def tts
  end
end
