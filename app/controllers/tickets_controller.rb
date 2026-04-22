class TicketsController < ApplicationController
  def home
  end
  def faq
  end
  def index
    @tickets = Ticket.all
  end
  def show
    @tickets = Ticket.find(params[:id])
  end
  def new
    @tickets = Ticket.new
  end
end
