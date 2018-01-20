PagSeguro.configure do |config|
  config.token       = Rails.env.production? ? "A561B8134D6D4A1FB72BC158243A9339" : "DF824F16E3AE412B9EDE968DA2E31CB6"
  config.email       = "rannyeri@protonmail.com"
  config.environment = Rails.env.production? ? :production : :sandbox
  config.encoding    = "UTF-8"
end
