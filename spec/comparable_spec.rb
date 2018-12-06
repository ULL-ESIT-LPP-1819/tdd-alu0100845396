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
end