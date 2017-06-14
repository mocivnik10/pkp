class Admin::BaseController < ApplicationController
  before_action :authenticate_admin!
  helper 'Admin'
  layout 'administration'
end
