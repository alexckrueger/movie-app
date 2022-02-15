class MoviesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: 422
    end
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year =  params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    if movie.save
      render json: movie
    else
      render json: movie.errors.full_messages, status: 422
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "you have been obliterated."}
  end

end
