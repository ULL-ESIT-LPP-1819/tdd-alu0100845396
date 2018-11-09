# Práctica 6 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

require "/Users/OmarM/src/LPP/prct06/lib/prct06/gem/etiqueta_nutri.rb"

describe Etiqueta do

    describe "#Expectativas para Etiqueta" do
        it "Probando método para obtener el nombre de la etiqueta"
            expect(@etiqueta1.nombre).to eq('Guacamole')
        end
    end
end