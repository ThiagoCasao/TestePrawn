class Tabela1Pdf < Prawn::Document

	def initialize(tabela1, view)
		super()
		text "isto é um teste"
		text tabela1.campo1


	end


end