class UploadController < ApplicationController
  def upload 
    uploader = UploaderUploader.new
    uploader.store!(my_file)
  end
end
