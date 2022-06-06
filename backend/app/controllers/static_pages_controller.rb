class StaticPagesController < ApplicationController
  def landing_page
    render json: { message: 'Hello world!' }, status: :ok
  end
end
