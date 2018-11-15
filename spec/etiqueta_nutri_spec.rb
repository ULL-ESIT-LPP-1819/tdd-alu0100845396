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
        node = Node.new(2, 3, nil)
            it 'Node existe' do
                expect(node.value).to eq(3)
                expect(node.next).to eq(nil)
                expect(node.prev).to eq(2)
            end
        end
    end

    describe List do
        describe "#Expectativas para List" do
            Lista.new
            node = Node.new(2, 3, nil)

            it "Insertar nodo correctamente" do
                list.insert(node)
                expect(list.head)to eq(node)
            end
            it "Lista existe con su head"
                expect(list.head)to eq(node)
            end
            it "Lista existe con su cola"
                expect(list.tain)to eq(node)
            end
        end
    end
end