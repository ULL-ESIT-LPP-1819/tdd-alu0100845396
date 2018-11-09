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
        @etiqueta = Etiqueta.new("Guacamole",17.2,2.4,0,0,3,1.4,0,0,3.2,1.5,1.3)
    end

    describe "# Expectativas para Etiqueta" do
        it "Probando método para obtener el nombre de la etiqueta" do
            expect(@etiqueta.nombre).to eq("Guacamole")
        end
        it "Probando método para obtener cantidad de grasas" do
            expect(@etiqueta.grasas).to eq(17.2)   
        end    
        it "Probando método para obtener cantidad de grasas saturadas" do
            expect(@etiqueta.grasas_sat).to eq(2.4)
        end
        it "Probando método para obtener cantidad de grasas monosaturadas" do
            expect(@etiqueta.grasas_mono).to eq(0)
        end
        it "Probando método para obtener cantidad de grasas polisaturadas" do
            expect(@etiqueta.grasas_poli).to eq(0)
        end
        it "Probando método para obtener la cantidad de hidratos de carbono" do
            expect(@etiqueta.hidratos).to eq(3) 
        end
        it "Probando método para obtener la cantidad de azúcares" do
            expect(@etiqueta.azucares).to eq(1.4)
        end
        it "Probando método para obtener la cantidad de polialcoholes" do
            expect(@etiqueta.polialcoholes).to eq(0)
        end
        it "Probando método para obtener la cantidad de almidón" do
            expect(@etiqueta.almidon).to eq(0)
        end
        it "Probando método para obtener la cantidad de fibra" do
            expect(@etiqueta.fibra).to eq(3.2)
        end
        it "Probando método para obtener la cantidad de proteínas" do
            expect(@etiqueta.proteinas).to eq(1.5)
        end
        it "Probando método para obtener la cantidad de sal" do
            expect(@etiqueta.sal).to eq(1.3)
        end

        it "Probando método para obtener cantidad de grasas en kilojulios (Kj)" do
            expect(@etiqueta.grasas_kj).to eq(636.4)
        end
        it "Probando método para obtener cantidad de grasas monosaturadas en kilojulios (Kj)" do
            expect(@etiqueta.grasas_mono_kj).to eq(0)
        end
        it "Probando método para obtener cantidad de grasas polisaturadas en kilojulios (Kj)" do
            expect(@etiqueta.grasas_poli_kj).to eq(0)
        end
        it "Probando método para obtener cantidad de hidratos de carbono en kilojulios (Kj)" do
            expect(@etiqueta.hidratos_kj).to eq(51)
        end
        it "Probando método para obtener cantidad de polialcoholes en kilojulios (Kj)" do
            expect(@etiqueta.polialcohol_kj).to eq(0)
        end
        it "Probando método para obtener cantidad de almidón en kilojulios (Kj)" do
            expect(@etiqueta.almidon_kj).to eq(0)
        end
    end
end