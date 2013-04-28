CarrierWave.configure do |config|
 
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['ACCESS_KEY'],
    :aws_secret_access_key  => ENV['SECRET_ACCESS_KEY'],
    :region                 => 'us-west-1',
    :host => "s3.amazonaws.com",
  }
 
  if Rails.env.development? || Rails.env.cucumber?
    config.storage = :fog
    config.enable_processing = false
    config.root = "#{Rails.root}/public"
  else
    config.storage = :fog
  end
 
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_directory = ENV['S3_BUCKET_NAME']
end
