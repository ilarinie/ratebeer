Rails.application.config.middleware.use OmniAuth::Builder do
 provider :github, ENV['e7c2f4d94434e2c02228'], ENV['3ee784daff98ac25aa979ba17c017af93bfb7220']
end
