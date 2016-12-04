class VenuesController < ApplicationController
  def index
    @q = Venue.ransack(params[:q])
    @venues = @q.result(:distinct => true).includes(:photos, :ratings, :coordinator).page(params[:page]).per(10)

    render("venues/index.html.erb")
  end

  def show
    @rating = Rating.new
    @photo = Photo.new
    @venue = Venue.find(params[:id])

    render("venues/show.html.erb")
  end

  def new
    @venue = Venue.new

    render("venues/new.html.erb")
  end

  def create
    @venue = Venue.new

    @venue.address = params[:address]
    @venue.title = params[:title]
    @venue.city = params[:city]
    @venue.state = params[:state]
    @venue.zip = params[:zip]
    @venue.coordinator_id = params[:coordinator_id]
    @venue.website = params[:website]
    @venue.capacity = params[:capacity]
    @venue.description = params[:description]
    @venue.cancellation_policy = params[:cancellation_policy]
    @venue.drink_option_1 = params[:drink_option_1]
    @venue.drink_option_2 = params[:drink_option_2]
    @venue.drink_option_3 = params[:drink_option_3]
    @venue.drink_option_4 = params[:drink_option_4]
    @venue.drink_option_5 = params[:drink_option_5]
    @venue.food_option_1 = params[:food_option_1]
    @venue.food_option_2 = params[:food_option_2]
    @venue.food_option_3 = params[:food_option_3]
    @venue.food_option_4 = params[:food_option_4]
    @venue.food_option_5 = params[:food_option_5]
    @venue.amenity_1 = params[:amenity_1]
    @venue.amenity_2 = params[:amenity_2]
    @venue.amenity_3 = params[:amenity_3]
    @venue.amenity_4 = params[:amenity_4]
    @venue.amenity_5 = params[:amenity_5]
    @venue.amenity_6 = params[:amenity_6]
    @venue.amenity_7 = params[:amenity_7]
    @venue.amenity_8 = params[:amenity_8]
    @venue.rule_1 = params[:rule_1]
    @venue.rule_2 = params[:rule_2]
    @venue.rule_3 = params[:rule_3]
    @venue.rule_4 = params[:rule_4]
    @venue.rule_5 = params[:rule_5]
    @venue.rule_6 = params[:rule_6]
    @venue.do1_price = params[:do1_price]
    @venue.do2_price = params[:do2_price]
    @venue.do3_price = params[:do3_price]
    @venue.do4_price = params[:do4_price]
    @venue.do5_price = params[:do5_price]
    @venue.fo1_price = params[:fo1_price]
    @venue.fo2_price = params[:fo2_price]
    @venue.fo3_price = params[:fo3_price]
    @venue.fo4_price = params[:fo4_price]
    @venue.fo5_price = params[:fo5_price]

    save_status = @venue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/venues/new", "/create_venue"
        redirect_to("/venues")
      else
        redirect_back(:fallback_location => "/", :notice => "Venue created successfully.")
      end
    else
      render("venues/new.html.erb")
    end
  end

  def edit
    @venue = Venue.find(params[:id])

    render("venues/edit.html.erb")
  end

  def update
    @venue = Venue.find(params[:id])

    @venue.address = params[:address]
    @venue.title = params[:title]
    @venue.city = params[:city]
    @venue.state = params[:state]
    @venue.zip = params[:zip]
    @venue.coordinator_id = params[:coordinator_id]
    @venue.website = params[:website]
    @venue.capacity = params[:capacity]
    @venue.description = params[:description]
    @venue.cancellation_policy = params[:cancellation_policy]
    @venue.drink_option_1 = params[:drink_option_1]
    @venue.drink_option_2 = params[:drink_option_2]
    @venue.drink_option_3 = params[:drink_option_3]
    @venue.drink_option_4 = params[:drink_option_4]
    @venue.drink_option_5 = params[:drink_option_5]
    @venue.food_option_1 = params[:food_option_1]
    @venue.food_option_2 = params[:food_option_2]
    @venue.food_option_3 = params[:food_option_3]
    @venue.food_option_4 = params[:food_option_4]
    @venue.food_option_5 = params[:food_option_5]
    @venue.amenity_1 = params[:amenity_1]
    @venue.amenity_2 = params[:amenity_2]
    @venue.amenity_3 = params[:amenity_3]
    @venue.amenity_4 = params[:amenity_4]
    @venue.amenity_5 = params[:amenity_5]
    @venue.amenity_6 = params[:amenity_6]
    @venue.amenity_7 = params[:amenity_7]
    @venue.amenity_8 = params[:amenity_8]
    @venue.rule_1 = params[:rule_1]
    @venue.rule_2 = params[:rule_2]
    @venue.rule_3 = params[:rule_3]
    @venue.rule_4 = params[:rule_4]
    @venue.rule_5 = params[:rule_5]
    @venue.rule_6 = params[:rule_6]
    @venue.do1_price = params[:do1_price]
    @venue.do2_price = params[:do2_price]
    @venue.do3_price = params[:do3_price]
    @venue.do4_price = params[:do4_price]
    @venue.do5_price = params[:do5_price]
    @venue.fo1_price = params[:fo1_price]
    @venue.fo2_price = params[:fo2_price]
    @venue.fo3_price = params[:fo3_price]
    @venue.fo4_price = params[:fo4_price]
    @venue.fo5_price = params[:fo5_price]

    save_status = @venue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/venues/#{@venue.id}/edit", "/update_venue"
        redirect_to("/venues/#{@venue.id}", :notice => "Venue updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Venue updated successfully.")
      end
    else
      render("venues/edit.html.erb")
    end
  end

  def destroy
    @venue = Venue.find(params[:id])

    @venue.destroy

    if URI(request.referer).path == "/venues/#{@venue.id}"
      redirect_to("/", :notice => "Venue deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Venue deleted.")
    end
  end
end
