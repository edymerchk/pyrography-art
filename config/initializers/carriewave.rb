CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        
    :aws_access_key_id      => 'AKIAI3SFXWVKKD5YV3FQ',       
    :aws_secret_access_key  => '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',  
  }
 config.fog_directory  = 'pirograbados'  
end