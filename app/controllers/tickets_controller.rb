class TicketsController < ApplicationController
  def index
  end
  def show
    @tickets = Ticket.find(params[:id])
  end
end
