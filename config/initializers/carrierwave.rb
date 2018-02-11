#config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_credentials = {
    # Configuration for Amazon S3 should be made available through an Environment variable.
    # For local installations, export the env variable through the shell OR
    # if using Passenger, set an Apache environment variable.
    #
    # In Heroku, follow http://devcenter.heroku.com/articles/config-vars
    #
    # $ heroku config:add S3_KEY=AKIAJ6GZYPKSFSA6LFQQ S3_SECRET=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 S3_REGION=eu-west-3 S3_ASSET_URL=https://s3.eu-west-3.amazonaws.com/mon-message

    # Configuration for Amazon S3
    :provider              => 'AWS',
    :aws_access_key_id     => ENV['S3_KEY'],
    :aws_secret_access_key => ENV['S3_SECRET'],
    :region                => ENV['S3_REGION']

  }

  # For testing, upload files to local `tmp` folder.
  if Rails.env.development?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  else
    config.storage = :fog
  end

  config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku

  config.fog_directory    = ENV['S3_BUCKET_NAME']

end
