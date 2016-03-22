class Daikichi::BaseController < ApplicationController
  layout 'daikichi'
  before_action :authenticate_admin!
end
