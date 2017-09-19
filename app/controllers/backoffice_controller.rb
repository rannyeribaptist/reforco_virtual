class BackofficeController < ApplicationController
  #Devise
  before_action :authenticate_user!

  #Default dashboard layout
  layout 'backoffice'
end
