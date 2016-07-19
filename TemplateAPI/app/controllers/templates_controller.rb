class TemplatesController < ApplicationController
	before_action :set_template, only: [:show, :update]

	def index
		@templates = Template.all
	end

	def update
		respond_to do |format|
			if @template.update(template_params)
				format.json { render :show, status: :ok }
			else
				format.json { render json: @template.errors, status: :unprocessable_entity }
			end
		end
	end

	private
	def set_template
		@template = Template.find(params[:id])
	end

	def template_params
		params.require(:template).permit(:css)
	end

end
