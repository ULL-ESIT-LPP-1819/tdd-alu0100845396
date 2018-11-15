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
                expect(node.value).to eq(2)
                expect(node.next).to eq(3)
            end
        end
    end

    describe List do
        describe "#Expectativas para Lista" do
            node = Node.new(2, 3, nil)
            list = List.new(node)
            node2 = Node.new(1, nil, nil)
            list2 = List.new(nil)
            node3 = Node.new(2,nil,nil)

            nodes = [node, node2, node3]

            it "List esta vacía" do
                expect(list2.empty?).to eq(true)
            end
            it "List existe con su head" do  
                expect(list.head).to eq(node)    
            end
            it "List existe con su tail" do
                expect(list.tail).to eq(node)
            end
            it "Primer nodo extraído correctamente" do       
                expect(list.extract_beginning).to eq(node)
            end
            it "Insertando nodo correctamente" do
                list.insert_beginning(node2)
                expect(list.head).to eq(node2)
            end
            it "Insertar un node por el final en List" do 
                list.insert_end(node3)
                expect(list.tail).to eq(node3)
                expect(list.head).to eq(node2) 
            end
            it "Insertar varios nodos a List" do
                list.insert_multi(nodes)
                expect(list.head).to eq(nodes[2])      
            end
            it "List no está vacía" do
                expect(list.empty?).to eq(false)
            end
        end
    end
end