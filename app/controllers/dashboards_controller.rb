class DashboardsController < ApplicationController
  def index
    @companies = current_user.companies
    @products = Company.find(current_user.companies.first.id).products
    @company = Company.new
  end
end
