class TimesController < ApplicationController
  def main
    @current = Time.now
  end
end
