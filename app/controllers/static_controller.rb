class StaticController < ApplicationController
  def home
    @contact = Contact.new
    @portfolios = Project.first(6)
  end
end
