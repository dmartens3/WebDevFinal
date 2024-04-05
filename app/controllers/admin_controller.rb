# frozen_string_literal: true

class AdminController < ApplicationController
  # All the admin pages need the view/layout/admin.html.erb to get the nav bar
  layout 'admin'

  # Make sure that admins are authenticated
  before_action :authenticate_admin!

  # Go to admin home page
  def index
    
  end
end
