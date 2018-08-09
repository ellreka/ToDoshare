class ImageController < ApplicationController
  require 'mini_magick'

  private

  def generate_image(name)
    base_image = MiniMagick::Image.open("app/assets/images/pikachu.jpg")
    base_image.gravity 'center'
    base_image.draw "text 200,200 'test'"
    base_image.write("app/assets/images/#{image_name}")
  end
end