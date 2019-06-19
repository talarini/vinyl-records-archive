class RecordsController < ApplicationController
  def index
    @record = Record.all
  end

  def new
    @record = Record.new
  end

  def show
    @record = Record.find(params[:id])
  end

  def create
    @record = Record.new(record_params)

    if @record.save
      redirect_to @record
    else
      render 'new'
    end
  end

  private
  def record_params
    params.require(:record).permit(:artist, :album)
  end
end
