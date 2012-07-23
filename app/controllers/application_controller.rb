class ApplicationController < ActionController::Base
  protect_from_forgery
  include Styx::Initializer
end
