PagSeguro.configure do |config|
  config.token       = Rails.env.production? ? "03A8AE640DC04F37801559F9168E6E88" : "4ED900681E4C454CBB53A4E1695C2BB9"
  config.email       = "escolaprogressao@hotmail.com"
  config.environment = Rails.env.production? ? :production : :sandbox
  config.encoding    = "UTF-8"
end
