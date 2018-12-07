# Práctica 9 - Lenguajes y Paradigmas de Programación
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
        @etiqueta2 = Etiqueta.new("Salmón",54,6,0,0,4,0,6,7,0,0,8)
    end

    it "Comprobar que etiqueta es menor que etiqueta2" do
        expect(@etiqueta < @etiqueta2).to eq(true)
    end
    it "Comprobar que etiqueta es menor o igual que etiqueta2" do
        expect(@etiqueta <= @etiqueta2).to eq(true)
    end
    it "Comprobar que etiqueta es igual a etiqueta2" do
        expect(@etiqueta == @etiqueta2).to eq(false)
    end
    it "Comprobar que etiqueta es igual que etiqueta2" do
        expect(@etiqueta > @etiqueta2).to eq(false)
    end
    it "Comprobar que etiqueta es mayor o igual que etiqueta2" do
        expect(@etiqueta >= @etiqueta2).to eq(false)
    end
    it "Comprobar que etiqueta está entre etiqueta2" do
        expect(@etiqueta.between?(@etiqueta2,@etiqueta2)).to eq(false)
    end

    context "#Comparable para Paciente" do
        before :each do
            @paciente = Paciente.new("Juan", 65, 1.70, 23, 1, [84, 85.0], [71, 70.0])
            @paciente2 = Paciente.new("Fernando", 93, 1.85, 45, 1, [91, 90.0], [82, 83.0])
        end
        it "Comprobación de que paciente es menor que paciente2" do
            expect(@paciente < @paciente2).to eq(true)
        end
        it "Comprobación de que paciente es menor o igual que paciente2" do
            expect(@paciente <= @paciente2).to eq(true)
        end
        it "Comprobación de que paciente es igual que paciente2" do
            expect(@paciente == @paciente2).to eq(false)
        end
        it "Comprobación de que paciente es mayor que paciente2" do
            expect(@paciente > @paciente2).to eq(false)
        end
        it "Comprobación de que paciente es mayor o igual que paciente2" do
            expect(@paciente >= @paciente2).to eq(false)
        end
        it "Comprobación de que paciente está entre paciente2" do
            expect(@paciente.between?(@paciente2,@paciente2)).to eq(false)
        end
    end
end