Rails.application.config.middleware.use OmniAuth::Builder  do
  provider :twitter, "CONFIG_KEY", "CONFIG_SECRET"
end
