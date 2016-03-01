
module Parametry
  attr_accessor :marka, :model, :rocznik
  def ogloszenie
    return "Sprzedam: #{@marka} #{@model} #{@rocznik } \n"
  end
end