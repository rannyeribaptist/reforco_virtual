PagSeguro.configure do |config|
  config.token       = "DF824F16E3AE412B9EDE968DA2E31CB6"
  config.email       = "rannyeri@protonmail.com"
  config.environment = Rails.env.production? ? :production : :sandbox
  config.encoding    = "UTF-8"
end
