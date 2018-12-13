# Práctica 10 - Lenguajes y Paradigmas de Programación
#
# La generación y validación de menús dietéticos la realizan expertos en nutrición, teniendo en cuenta
# las recomendaciones nutricionales recogidas en guías alimentarias y los atributos del individuo. Los
# menús se diseñan de manera que satisfagan los requerimientos del individuo para mantener un estado
# nutricional adecuado. Existen diferentes guías ajustadas a distintas regiones y también esquemas
# reconocidos internacionalmente como adecuados, como por ejemplo, la dieta mediterránea. Así pues,
# partiendo de la valoración nutricional de un individuo se le asocia un menú dietético adecuado.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

require "spec_helper"

describe Etiqueta do

    context "# Expectativas de menú dietético " do

        before :each do

            @paciente = Paciente.new("Juan", 65, 1.70, 23, 1, [84, 85.0], [71, 70.0])
            @paciente2 = Paciente.new("Fernando", 93, 1.85, 45, 1, [91, 90.0], [82, 83.0])
            @paciente3 = Paciente.new("Mario", 112, 1.70, 67, 1, [99, 98.0], [90, 89.0])
            @paciente4 = Paciente.new("Ana", 55, 1.63, 29, 0, [69, 70.0], [61, 60.0])
            @paciente5 = Paciente.new("María", 82, 1.75, 55, 0, [74, 75.0], [69, 70.0])
            @paciente6 = Paciente.new("Alicia", 150, 1.80, 46, 0, [84, 83.0], [79, 78.0])

            @etiqueta = Etiqueta.new("Guacamole", 17.2, 2.4, 0, 0, 3, 1.4, 0, 0, 3.2, 1.5, 5)
            @etiqueta2 = Etiqueta.new("Cereales", 7, 4, 0, 0, 71, 36, 0, 46, 4, 0, 6)
            @etiqueta3 = Etiqueta.new("Zumo de naranja", 0.1, 0, 0, 0, 9.5, 8.9 ,0 ,0 ,0.6, 0.6, 1)
            @etiqueta4 = Etiqueta.new("Jamón ibérico", 21.9, 6.3, 0, 0, 0.5, 0.5, 0, 0, 0.1, 30, 9)
            @etiqueta5 = Etiqueta.new("Jamón", 21.9, 6.3, 0, 0, 0.5, 0.5, 0, 0, 0.1, 30, 10)
            @etiqueta6 = Etiqueta.new("Salmón", 54, 6, 0, 0, 4, 0, 6, 7, 0, 0, 8)

            @menu = ListValue.new
            @menu.insert_val(@etiqueta)
            @menu.insert_val(@etiqueta4)

            @menu2 = ListValue.new
            @menu2.insert_val(@etiqueta2)
            @menu2.insert_val(@etiqueta6)

            @menu3 = ListValue.new
            @menu3.insert_val(@etiqueta3)
            @menu3.insert_val(@etiqueta)

            @menu4 = ListValue.new
            @menu4.insert_val(@etiqueta4)
            @menu4.insert_val(@etiqueta2)

            @menu5 = ListValue.new
            @menu5.insert_val(@etiqueta5)
            @menu5.insert_val(@etiqueta4)
            
        end
        
        it "Existe un método para calcular el PTI" do
            expect(@paciente.peso_teorico_ideal).to eq()
            expect(@paciente2.peso_teorico_ideal).to eq()
            expect(@paciente3.peso_teorico_ideal).to eq()
            expect(@paciente4.peso_teorico_ideal).to eq()
            expect(@paciente5.peso_teorico_ideal).to eq()
            expect(@paciente6.peso_teorico_ideal).to eq()
        end
    end
end