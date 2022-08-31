// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "custom/main"
import LocalTime from "/assets/local-time-cdn.js"
LocalTime.start()