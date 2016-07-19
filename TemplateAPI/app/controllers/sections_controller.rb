class SectionsController < ApplicationController
	before_action :set_section, only: [:show, :update]

	def index
		@sections = Section.all
	end

	def update
		# @template = Template.find(params[:template_id])
		respond_to do |format|
			if @section.update(section_params)
				format.json { render :show, status: :ok }
			else
				format.json { render json: @section.errors, status: :unprocessable_entity }
			end
		end
	end

	private
	def set_section
		@section = Section.find(params[:id])
	end

	def section_params
		params.require(:section).permit(:css)
	end

end
