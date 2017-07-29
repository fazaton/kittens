class KittensController < ApplicationController
	def new
	end

	def index
		@kittens = Kitten.all
	end

	def show
		@kitten = Kitten.find(params[:id])
	end

	def create
	end

	def update 
	end

end
