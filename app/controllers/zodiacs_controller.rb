class ZodiacsController < ApplicationController
  def sign
    @zodiac = Zodiac.find_by({ :sign => params["the_sign"]})
  end

  def creature
    @zodiac = Zodiac.find_by({ :creature => params["the_creature"]})
  end

  def id
    @zodiac = Zodiac.find(params["the_id"])
  end

  def index
    @list_of_zodiacs = Zodiac.all
  end

  def new

  end

  def create_row
    z = Zodiac.new
    z.sign = params["sign"]
    z.creature = params["creature"]
    z.fortune = params["fortune"]
    z.save
    redirect_to("http://localhost:3000/zodiacs")
  end

  def delete_row
    z = Zodiac.find(params["the_id"])
    z.destroy
    redirect_to("http://localhost:3000/zodiacs")
  end
end
