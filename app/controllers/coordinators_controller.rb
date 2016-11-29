class CoordinatorsController < ApplicationController
  def index
    @coordinators = Coordinator.all

    render("coordinators/index.html.erb")
  end

  def show
    @venue = Venue.new
    @coordinator = Coordinator.find(params[:id])

    render("coordinators/show.html.erb")
  end

  def new
    @coordinator = Coordinator.new

    render("coordinators/new.html.erb")
  end

  def create
    @coordinator = Coordinator.new

    @coordinator.first_name = params[:first_name]
    @coordinator.last_name = params[:last_name]
    @coordinator.email_address = params[:email_address]
    @coordinator.phone_number = params[:phone_number]

    save_status = @coordinator.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/coordinators/new", "/create_coordinator"
        redirect_to("/coordinators")
      else
        redirect_back(:fallback_location => "/", :notice => "Coordinator created successfully.")
      end
    else
      render("coordinators/new.html.erb")
    end
  end

  def edit
    @coordinator = Coordinator.find(params[:id])

    render("coordinators/edit.html.erb")
  end

  def update
    @coordinator = Coordinator.find(params[:id])

    @coordinator.first_name = params[:first_name]
    @coordinator.last_name = params[:last_name]
    @coordinator.email_address = params[:email_address]
    @coordinator.phone_number = params[:phone_number]

    save_status = @coordinator.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/coordinators/#{@coordinator.id}/edit", "/update_coordinator"
        redirect_to("/coordinators/#{@coordinator.id}", :notice => "Coordinator updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Coordinator updated successfully.")
      end
    else
      render("coordinators/edit.html.erb")
    end
  end

  def destroy
    @coordinator = Coordinator.find(params[:id])

    @coordinator.destroy

    if URI(request.referer).path == "/coordinators/#{@coordinator.id}"
      redirect_to("/", :notice => "Coordinator deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Coordinator deleted.")
    end
  end
end
