if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIX2GDBGULSAWEXUQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['cheeze-projects']
  end
end