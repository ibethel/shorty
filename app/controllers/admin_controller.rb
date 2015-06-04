class AdminController < ApplicationController
  before_filter :require_authentication
end
