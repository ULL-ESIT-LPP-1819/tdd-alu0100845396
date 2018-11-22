# Práctica 8 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

require "spec_helper"

describe Etiqueta do

    context "# Expextativas de herencia de la clase Individuo" do

        before :each do
            @individuo = Individuo::Individuo.new("Marcos")
        end

        it "El objeto Individuo es una instancia de la clase Individuo" do
            expect(@individuo).to be_an_instance_of(Individuo::Individuo)
        end
    end
end