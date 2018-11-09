# Práctica 6 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

require "spec_helper"

describe Etiqueta do

    before :each do
        @etiqueta = Etiqueta.new("Guacamole",1,0,0,0,4.7,4.2,0,0,0,0.5)
    end

    describe "# Expectativas para Etiqueta" do
        it "Probando método para obtener el nombre de la etiqueta" do
            expect(@etiqueta.nombre).to eq("Guacamole")
        end
    end
end