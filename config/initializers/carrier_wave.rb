require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: Rails.application.credentials.dig(:aws, :AKIAVUQYNEDVNAK3NME5),
      aws_secret_access_key: Rails.application.credentials.dig(:aws, :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),
      region: Rails.application.credentials.dig(:aws, :ap-northeast-1)
    }
    config.fog_directory = Rails.application.credentials.dig(:aws, :little-park)
  end
