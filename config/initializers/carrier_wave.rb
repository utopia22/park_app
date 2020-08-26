require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production? || Rails.env.development?
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'littlepark'
    config.asset_host = 'https://s3.amazonaws.com/littlepark'

    config.fog_public = false # ←コレ
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AWS_ACCESS_KEY_ID',
      aws_secret_access_key: 'AWS_SECRET_ACCESS_KEY',
      region: 'ap-northeast-1',

    }
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
end
