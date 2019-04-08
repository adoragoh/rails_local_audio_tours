class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :register ]
  def home
  end

  def register
  end

end
