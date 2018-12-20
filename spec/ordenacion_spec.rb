# Práctica 11 - Lenguajes y Paradigmas de Programación
#
# Se ha te tener en cuenta que un men´u diet´etico esta compuesto por un conjunto de
# alimentos procesados, donde cada uno de ellos cuenta con una etiqueta de informaci´on nutricional.
# La energ´ıa, grasas, hidratos de carbono, prote´ınas, l´ıpidos, fibra y sal del men´u se obtienen a partir
# de los alimentos que lo componen.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

require "spec_helper"

describe Etiqueta do

    context "# Expectativas de array de menús " do

        before :each do

            @paciente = Paciente.new("Juan", 65, 1.70, 23, 1, [84, 85.0], [71, 70.0], 0.12)
            @paciente2 = Paciente.new("Fernando", 93, 1.85, 45, 1, [91, 90.0], [82, 83.0], 0.54)
            @paciente3 = Paciente.new("Mario", 112, 1.70, 67, 1, [99, 98.0], [90, 89.0], 0.54)
            @paciente4 = Paciente.new("Ana", 55, 1.63, 29, 0, [69, 70.0], [61, 60.0], 0.27)
            @paciente5 = Paciente.new("María", 82, 1.75, 55, 0, [74, 75.0], [69, 70.0], 0.12)

            @etiqueta = Etiqueta.new("Guacamole", 17.2, 2.4, 0, 0, 3, 1.4, 0, 0, 3.2, 1.5, 5)
            @etiqueta2 = Etiqueta.new("Cereales", 7, 4, 0, 0, 71, 36, 0, 46, 4, 0, 6)
            @etiqueta3 = Etiqueta.new("Zumo de naranja", 0.1, 0, 0, 0, 9.5, 8.9 ,0 ,0 ,0.6, 0.6, 1)
            @etiqueta4 = Etiqueta.new("Jamón ibérico", 21.9, 6.3, 0, 0, 0.5, 0.5, 0, 0, 0.1, 30, 9)
            @etiqueta5 = Etiqueta.new("Jamón", 21.9, 6.3, 0, 0, 0.5, 0.5, 0, 0, 0.1, 30, 10)

            @menu = ListValue.new
            @menu.insert_val(@etiqueta2)
            @menu.insert_val(@etiqueta4)
 
            @menu2 = ListValue.new
            @menu2.insert_val(@etiqueta3)
            @menu2.insert_val(@etiqueta5)
 
            @menu3 = ListValue.new
            @menu3.insert_val(@etiqueta4)
            @menu3.insert_val(@etiqueta2)
 
            @menu4 = ListValue.new
            @menu4.insert_val(@etiqueta5)
            @menu4.insert_val(@etiqueta)
 
            @menu5 = ListValue.new
            @menu5.insert_val(@etiqueta3)
            @menu5.insert_val(@etiqueta4)
 
            @menu_array = [@menu, @menu2, @menu3, @menu4, @menu5, @menu, @menu2, @menu3, @menu4, @menu5]

            @paciente_list = ListValue.new

            @paciente_list.insert_val(@paciente)
            @paciente_list.insert_val(@paciente2)
            @paciente_list.insert_val(@paciente3)
            @paciente_list.insert_val(@paciente4)
            @paciente_list.insert_val(@paciente5)
            @paciente_list.insert_val(@paciente)
            @paciente_list.insert_val(@paciente2)
            @paciente_list.insert_val(@paciente3)
            @paciente_list.insert_val(@paciente4)
            @paciente_list.insert_val(@paciente5)
            
        end

        it "Existen 10 menús en un array" do
            expect(@menu_array.collect{ |x| x.to_s}).equal?(String)
            expect(@menu_array.size).to eq(10)
        end
        it "Existen 10 valoraciones nutricionales en una lista" do
            expect(@paciente_list.collect{ |x| x.to_s}).equal?(String)
            expect(@paciente_list.length).to eq(10)
        end

        it "Se ordena una lista de valoraciones nutricionales de pacientes con for, each y sort correctamente " do
            expect(@paciente_list.sort_each).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
            expect(@paciente_list.sort_for).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
            expect(@paciente_list.map{ |x| x.gasto_energetico_total}.sort ).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        end
        it "Se ordena un array de menús con for, each y sort correctamente" do
            expect(@menu_array.sort_each).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
            expect(@menu_array.sort_for).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
            expect(@menu_array.map{ |x| x.reduce(:+)}.sort).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        end
    end
end