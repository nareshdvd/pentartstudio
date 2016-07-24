class HomeController < ApplicationController
  def index
  end

  def services
    @articles = {
      "sculptures" => {
        "images" => (1..6).collect{|i| "sculpture/#{i}.jpg"},
        "description" => "Here in pentart regardless the size of each project the same skills, techniques and attention to every detail are applied to ensure to achieve the quality finish and satisfaction of each client. Whatever your needs are, pentart will work with you in producing quality art at affordable prices.Sculpture in modern use is a branch of fine art, wherein the figures are produced in round or in relief either by carving or by making a mould for casting in various metals. We use sand pit and wax release method for casting. Our castings are done in bronze, brass, stainless steel, aluminium and fibre glass. All can help capture the appropriate mood, and add value and interest to the environments in which they are installed."
      },
      "paintings" => {
        "images" => (1..7).collect{|i| "painting/#{i}.jpg"},
        "description" => "Here in pentart regardless the size of each project the same skills, techniques and attention to every detail are applied to ensure to achieve the quality finish and satisfaction of each client. Whatever your needs are, pentart will work with you in producing quality art at affordable prices.Sculpture in modern use is a branch of fine art, wherein the figures are produced in round or in relief either by carving or by making a mould for casting in various metals. We use sand pit and wax release method for casting. Our castings are done in bronze, brass, stainless steel, aluminium and fibre glass. All can help capture the appropriate mood, and add value and interest to the environments in which they are installed."
      },
      "illustrations" => {
        "images" => (1..6).collect{|i| "illustration/#{i}.jpg"},
        "description" => "Here in pentart regardless the size of each project the same skills, techniques and attention to every detail are applied to ensure to achieve the quality finish and satisfaction of each client. Whatever your needs are, pentart will work with you in producing quality art at affordable prices.Sculpture in modern use is a branch of fine art, wherein the figures are produced in round or in relief either by carving or by making a mould for casting in various metals. We use sand pit and wax release method for casting. Our castings are done in bronze, brass, stainless steel, aluminium and fibre glass. All can help capture the appropriate mood, and add value and interest to the environments in which they are installed."
      },
      "animations" => {
        "images" => (1..6).collect{|i| "illustration/#{i}.jpg"},
        "description" => "Here in pentart regardless the size of each project the same skills, techniques and attention to every detail are applied to ensure to achieve the quality finish and satisfaction of each client. Whatever your needs are, pentart will work with you in producing quality art at affordable prices.Sculpture in modern use is a branch of fine art, wherein the figures are produced in round or in relief either by carving or by making a mould for casting in various metals. We use sand pit and wax release method for casting. Our castings are done in bronze, brass, stainless steel, aluminium and fibre glass. All can help capture the appropriate mood, and add value and interest to the environments in which they are installed."
      }
    }
    @articles_data = @articles[params[:article]]
  end

  def trade_gallery
    @pic_count = 54
  end

  def exclusive_print
  end

  def contact_us
    flash[:notice] = "Thanks for contacting us, your request will be processed soon!"
    @contact_request = ContactRequest.new
  end

  def save_contact_request
    if ContactRequest.find_by_from_ip(request.remote_ip).blank?
      @contact_request = ContactRequest.new(contact_params)
      @contact_request.from_ip = request.remote_ip
      @contact_request.save
    end
    flash[:notice] = "Thanks for contacting us, your request will be processed soon!"
    redirect_to root_url
  end

  private

  def contact_params
    params.require(:contact_request).permit(:name, :email, :phone_number, :message)
  end
end
