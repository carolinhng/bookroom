class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @room = Room.find(params[:room_id])
    @user = current_user
    @booking.room = @room
    @booking.user = @user
    if @booking.save!
      redirect_to room_path(@room), notice: "Your booking is confirmed !"
    else
      render 'rooms/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
