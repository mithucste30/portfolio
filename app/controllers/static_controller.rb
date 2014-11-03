class StaticController < ApplicationController
  def home
    @portfolios = Project.first(6)
  end
end
