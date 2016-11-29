class VenuesController < ApplicationController
  def index
    @q = Venue.ransack(params[:q])
    @venues = @q.result(:distinct => true).includes(:photos, :ratings, :coordinator).page(params[:page]).per(10)
    @location_hash = Gmaps4rails.build_markers(@venues.where.not(:address_latitude => nil)) do |venue, marker|
      marker.lat venue.address_latitude
      marker.lng venue.address_longitude
      marker.infowindow "<h5><a href='/venues/#{venue.id}'>#{venue.created_at}</a></h5><small>#{venue.address_formatted_address}</small>"
    end

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

    @venue.title = params[:title]
    @venue.address = params[:address]
    @venue.city = params[:city]
    @venue.state = params[:state]
    @venue.zip = params[:zip]
    @venue.coordinator_id = params[:coordinator_id]
    @venue.website = params[:website]
    @venue.capacity = params[:capacity]
    @venue.description = params[:description]
    @venue.cancellation_policy = params[:cancellation_policy]
    @venue.drink_options = params[:drink_options]
    @venue.food_options = params[:food_options]

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

    @venue.title = params[:title]
    @venue.address = params[:address]
    @venue.city = params[:city]
    @venue.state = params[:state]
    @venue.zip = params[:zip]
    @venue.coordinator_id = params[:coordinator_id]
    @venue.website = params[:website]
    @venue.capacity = params[:capacity]
    @venue.description = params[:description]
    @venue.cancellation_policy = params[:cancellation_policy]
    @venue.drink_options = params[:drink_options]
    @venue.food_options = params[:food_options]

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
