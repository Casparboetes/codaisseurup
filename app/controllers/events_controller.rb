class EventsController < ApplicationController
  # The before_action :authenticate_user!, except: [:show] makes sure that the
  # user is authenticated before calling any of the actions in the controller,
  # except the show method. In other words: If you're not logged in, you can only
  # use the show method of the eventsController, but not use any of its other
  # methods. :)

  before_action :set_event, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

# Normally the index action will return all events. In this case, we only want to
# show the events that belong to the current user. Or, as programmers tend to
# say, we use the events that are scoped on the current user. The current_user
# is set by the previous mentioned method.

# The method definition for show and edit look a bit silly.
# They only need to run the code from the before_action, nothing else.
# The one-line form def show; end is just a way of over-communicating to
# your colleagues that the method is needed, but empty.

# Read
  def index
    @events = current_user.events
  end

  def show
    @categories = @event.categories
  end

# Work your way down the according to CRUD
# Create

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(events_params)

    if @event.save
      redirect_to @event, notice: "Event created!"
    else
      render :new
    end
  end

# Update edit -> :form // update -> :change state

  def edit
  end

  def update
    if @event.update(events_params)
      redirect_to @event, notice: "Event updated!"
    else
      render :edit
    end
  end

# Destroy( not in this case)

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def events_params
    params
      .require(:event)
      .permit( :name, :description, :location, :price, :capacity, :includes_food,
      :includes_drinks, :starts_at, :ends_at, :active, category_ids: []
    )
  end
end


# Using the event_params method, only the attributes that are permit-ed for a
# resource that is require-d, we can assign these attributes. This is also
# known as whitelisting. The event_params method is like a bouncer: if your
# trying to sneak in while you're not permitted, you won't be let in!

# This means that you'll have a single place where you're making conscious
# decision about which attributes to allow from your users. This is a security
# practice to help prevent accidentally allowing users to update sensitive
# model attributes.
