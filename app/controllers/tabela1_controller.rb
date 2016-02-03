require "#{Rails.root}/app/pdf/Tabela1Pdf.rb"

class Tabela1Controller < ApplicationController

def index
	@tabela1 = Tabela1.all
end

def show
	@tabela1 = Tabela1.all.first

	respond_to do |format|
		format.html
		format.pdf do
			pdf = Tabela1Pdf.new(@tabela1, view_context)

			send_data pdf.render, filename: "tabela1_#{@tabela1.campo1}", type: "application/pdf"

		end


	end	


end


end
