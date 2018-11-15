# Práctica 7 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

require "spec_helper"

describe Etiqueta do

    describe Node do
        describe "# Expectativas para Node" do
        node = Node.new(nil,2)
            it 'Node existe' do
                expect(node.value).to_eq(nil)
                expect(node.next).to_eq(2)
            end
        end
    end
end