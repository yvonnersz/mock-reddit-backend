if Rails.env == 'production'
    Rails.application.config.session_store :cookie_store, key: "_mock-reddit", domain: "mock-reddit.com"
else
    Rails.application.config.session_store :cookie_store, key: "_mock-reddit"
end