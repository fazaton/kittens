class KittensController < ApplicationController
	def new
		@kitten = Kitten.new
	end

	def index
		@kittens = Kitten.all
	end

	def show
		@kitten = Kitten.find(params[:id])
	end

	def create
		Kitten.create(kitten_params)
		redirect_to root_path
	end

	def edit 
		@kitten = Kitten.find(params[:id])
	end

	def update
		@kitten = Kitten.find(params[:id])
		@kitten.update_attributes(kitten_params)
		redirect_to root_path
	end

	def destroy
		@kitten = Kitten.find(params[:id])
		@kitten.destroy
		redirect_to root_path
	end

	private

	def kitten_params
		params.require(:kitten).permit(:name, :age, :cuteness, :softness)
	end

end
