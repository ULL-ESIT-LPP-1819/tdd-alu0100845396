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

            @paciente = Paciente.new("Juan", 65, 1.70, 23, 1, [84, 85.0], [71, 70.0], 0.12)
            @paciente2 = Paciente.new("Fernando", 93, 1.85, 45, 1, [91, 90.0], [82, 83.0], 0.54)
            @paciente3 = Paciente.new("Mario", 112, 1.70, 67, 1, [99, 98.0], [90, 89.0], 0.54)
            @paciente4 = Paciente.new("Ana", 55, 1.63, 29, 0, [69, 70.0], [61, 60.0], 0.27)
            @paciente5 = Paciente.new("María", 82, 1.75, 55, 0, [74, 75.0], [69, 70.0], 0.12)
            @paciente6 = Paciente.new("Alicia", 150, 1.80, 46, 0, [84, 83.0], [79, 78.0], 0.12)

            @etiqueta = Etiqueta.new("Guacamole", 17.2, 2.4, 0, 0, 3, 1.4, 0, 0, 3.2, 1.5, 5)
            @etiqueta2 = Etiqueta.new("Cereales", 7, 4, 0, 0, 71, 36, 0, 46, 4, 0, 6)
            @etiqueta3 = Etiqueta.new("Zumo de naranja", 0.1, 0, 0, 0, 9.5, 8.9 ,0 ,0 ,0.6, 0.6, 1)
            @etiqueta4 = Etiqueta.new("Jamón ibérico", 21.9, 6.3, 0, 0, 0.5, 0.5, 0, 0, 0.1, 30, 9)
            @etiqueta5 = Etiqueta.new("Jamón", 21.9, 6.3, 0, 0, 0.5, 0.5, 0, 0, 0.1, 30, 10)
            @etiqueta6 = Etiqueta.new("Salmón", 54, 6, 0, 0, 4, 0, 6, 7, 0, 0, 8)

            @menu1 = [@etiqueta2, @etiqueta4]
            @menu2 = [@etiqueta3, @etiqueta5]
            @menu3 = [@etiqueta4, @etiqueta2]
            @menu4 = [@etiqueta5, @etiqueta6]
            @menu5 = [@etiqueta6, @etiqueta3]
            
        end
        
        it "Existe un método para calcular el PTI" do
            expect(@paciente.peso_teorico_ideal).to eq(65.0)
            expect(@paciente2.peso_teorico_ideal).to eq(76.25)
            expect(@paciente3.peso_teorico_ideal).to eq(65.0)
            expect(@paciente4.peso_teorico_ideal).to eq(59.75)
            expect(@paciente5.peso_teorico_ideal).to eq(68.75)
            expect(@paciente6.peso_teorico_ideal).to eq(72.5)
        end
        it "Existe un método para calcular el GEB" do
            expect(@paciente.gasto_energetico_basal).to eq(1602.5)
            expect(@paciente2.gasto_energetico_basal).to eq(1866.25)
            expect(@paciente3.gasto_energetico_basal).to eq(1852.5)
            expect(@paciente4.gasto_energetico_basal).to eq(1262.75)
            expect(@paciente5.gasto_energetico_basal).to eq(1477.75)
            expect(@paciente6.gasto_energetico_basal).to eq(2234)
        end
        it "Existe un método para calcular el ET" do
            expect(@paciente.efecto_termogeno).to eq(160.25)
            expect(@paciente2.efecto_termogeno).to eq(186.63)
            expect(@paciente3.efecto_termogeno).to eq(185.25)
            expect(@paciente4.efecto_termogeno).to eq(126.28)
            expect(@paciente5.efecto_termogeno).to eq(147.78)
            expect(@paciente6.efecto_termogeno).to eq(223.4)
        end
        it "Existe un método para calcular el GAF" do
            expect(@paciente.gasto_actividad_fisica).to eq(192.3)
            expect(@paciente2.gasto_actividad_fisica).to eq(1007.78)
            expect(@paciente3.gasto_actividad_fisica).to eq(1000.35)
            expect(@paciente4.gasto_actividad_fisica).to eq(340.94)
            expect(@paciente5.gasto_actividad_fisica).to eq(177.33)
            expect(@paciente6.gasto_actividad_fisica).to eq(268.08)
        end
        it "Existe un método para calcular el GET" do
            expect(@paciente.gasto_energetico_total).to eq(1955.05)
            expect(@paciente2.gasto_energetico_total).to eq(3060.66)
            expect(@paciente3.gasto_energetico_total).to eq(3038.1)
            expect(@paciente4.gasto_energetico_total).to eq(1729.97)
            expect(@paciente5.gasto_energetico_total).to eq(1802.86)
            expect(@paciente6.gasto_energetico_total).to eq(2725.48)
        end

        it "Menú dietético 1 para el paciente 4" do
            calorias_menu = @menu1.map{ |i| i.valor_ener_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @paciente4.gasto_energetico_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
        end
        it "Menú dietético 2 para el paciente 2" do
            calorias_menu = @menu2.map{ |i| i.valor_ener_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @paciente2.gasto_energetico_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
        end
        it "Menú dietético 3 para el paciente 5" do
            calorias_menu = @menu3.collect{ |x| x.valor_ener_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @paciente5.gasto_energetico_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
        end
        it "Menú dietético 4 para el paciente 1" do
            calorias_menu = @menu4.collect{ |x| x.valor_ener_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @paciente.gasto_energetico_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
        end
        it "Menú dietético 5 para el paciente 3" do
            calorias_menu = @menu5.collect{ |x| x.valor_ener_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @paciente3.gasto_energetico_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
        end
    end
end