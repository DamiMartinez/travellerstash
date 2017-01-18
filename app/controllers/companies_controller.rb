class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @companies_rank = Company.order(rank: :desc)
  end

  def show
    @company = Company.find_by(name_url: params[:title])
    # @company = params[:title]
    case params[:category]
    when "flighthacks"
      @category_name = "Flight Hacks"
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Flight Hacks' ").order(rank: :desc)
    when "hotelbooking"
      @category_name = "Hotel Booking" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Hotel Booking' ").order(rank: :desc)
    when "multimodalsearch"
      @category_name = "Multimodal Search" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Multimodal Search' ").order(rank: :desc)
    when "carrental"
      @category_name = "Car Rental" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Car Rental' ").order(rank: :desc)
    when "afterbooking"
      @category_name = "After Booking" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'After Booking' ").order(rank: :desc)
    when "packages"
      @category_name = "Packages" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Packages' ").order(rank: :desc)
    when "ridesharing"
      @category_name = "Ride Sharing" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Ride Sharing' ").order(rank: :desc)
    when "vacationrental"
      @category_name = "Vacation Rental" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Vacation Rental' ").order(rank: :desc)
    when "backpackers"
      @category_name = "Backpackers Accommodation" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Backpackers Accommodation' ").order(rank: :desc)
    when "inspiration"
      @category_name = "Inspiration" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Inspiration' ").order(rank: :desc)
    when "guides"
      @category_name = "Guides" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Guides' ").order(rank: :desc)
    when "planners"
      @category_name = "Planners" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Planners' ").order(rank: :desc)
    when "businesstravel"
      @category_name = "Business Travel" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Business Travel' ").order(rank: :desc)
    when "loyaltyprograms"
      @category_name = "Loyalty Programs" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Loyalty Programs' ").order(rank: :desc)
    when "travelafrica"
      @category_name = "Travel Africa" 
      @category_name_url = params[:category]
      @companies_category = Company.where("category_name = 'Travel Africa' ").order(rank: :desc)
    end
  end
end
