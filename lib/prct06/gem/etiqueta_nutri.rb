# Práctica 7 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

class Etiqueta              # Clase Etiqueta

    # Módulo Comparable
    include Comparable
    # Constructor de la clase Etiqueta
    attr_reader :nombre, :grasas, :grasas_sat, :grasas_mono, :grasas_poli, :hidratos, :azucares, :polialcoholes, :almidon, :fibra, :proteinas, :sal

    def initialize(nombre, grasas, grasas_sat, grasas_mono, grasas_poli, hidratos, azucares, polialcoholes, almidon, fibra, proteinas, sal)
        @nombre = nombre
        @grasas = grasas
        @grasas_sat = grasas_sat
        @grasas_mono = grasas_mono
        @grasas_poli = grasas_poli
        @hidratos = hidratos
        @azucares = azucares
        @polialcoholes = polialcoholes
        @almidon = almidon
        @fibra = fibra
        @proteinas = proteinas
        @sal = sal
    end

    def grasas_kj               # Método para obtener la cantidad de grasas en Kj
        (@grasas * 37).round(2)
    end

    def grasas_mono_kj          # Método para obtener la cantidad de grasas monosaturadas en Kj
        (@grasas_mono * 37).round(2)
    end

    def grasas_poli_kj          # Método para obtener la cantidad de grasas polisaturadas en Kj
        (@grasas_poli * 37).round(2)
    end

    def hidratos_kj             # Método para obtener la cantidad de hidratos de carbono en Kj
        (@hidratos * 17).round(2)
    end

    def polialcohol_kj          # Método para obtener la cantidad de hidratos de carbono en Kj
        (@polialcoholes * 10).round(2)
    end

    def almidon_kj              # Método para obtener la cantidad de almidon en Kj
        (@almidon * 17).round(2)
    end

    def fibra_kj                # Método para obtener la cantidad de fibra en Kj
        (@fibra * 8).round(2)
    end

    def proteinas_kj            # Método para obtener la cantidad de proteínas en Kj
        (@proteinas * 17).round(2)
    end

    def sal_kj                  # Método para obtener la cantidad de sal en Kj
        (@sal * 25).round(2)
    end

    def valor_ener_kj           # Método para obtener el valor energético en Kj
       val_ener = (grasas_kj + grasas_mono_kj + grasas_poli_kj + hidratos_kj + polialcohol_kj + almidon_kj + fibra_kj + proteinas_kj + sal_kj).round(2)
    end

    def grasas_kcal             # Método para obtener grasas en Kcal
        (@grasas * 9).round(2)
    end

    def grasas_mono_kcal        # Método para obtener grasas monosaturadas en Kcal
        (@grasas_mono * 9).round(2)
    end

    def grasas_poli_kcal        # Método para obtener grasas polisaturadas en Kcal
        (@grasas_poli * 9).round(2)
    end

    def hidratos_kcal           # Método para obtener hidratos en Kcal
        (@hidratos * 4).round(2)
    end

    def polialcohol_kcal        # Método para obtener polialcoholes en Kcal
        (@polialcoholes * 2.4).round(2)
    end

    def almidon_kcal            # Método para obtener almidón en Kcal
        (@almidon * 4).round(2)
    end

    def fibra_kcal              # Método para obtener fibra en Kcal
        (@fibra * 2).round(2)
    end

    def proteinas_kcal          # Método para obtener proteínas en Kcal
        (@proteinas * 4).round(2)
    end

    def sal_kcal                # Método para obtener sal en Kcal
        (@sal * 6).round(2)
    end

    def valor_ener_kcal         # Método para obtener valor enerético en Kcal
        (grasas_kcal + grasas_mono_kcal + grasas_poli_kcal+ hidratos_kcal + polialcohol_kcal + almidon_kcal + fibra_kcal + proteinas_kcal + sal_kcal).round(2)
    end

    def valor_ener_ir           # Método para obtener %IR valor energético
        ((valor_ener_kj / 8400) * 100).round(2) 
    end

    def grasas_ir               # Método para obtener %IR grasas
        ((@grasas / 70) * 100).round(2)
    end

    def saturadas_ir            # Método para obtener %IR grasas saturadas
         ((@grasas_sat / 20) * 100).round(2)
    end 
    
    def hidratos_ir             # Método para obtener %IR hidratos
         ((@hidratos / 260) * 100).round(2)
    end

    def azucares_ir             # Método para obtener %IR azúcares
         ((@azucares / 90) * 100).round(2)
    end

    def proteinas_ir            # Método para obtener %IR proteínas
         ((@proteinas / 50) * 100).round(2)
    end

    def sal_ir                  # Método para obtener %IR sales
         ((@sal / 6) * 100).round(2)
    end

    def to_s            # Método to_s de visualización de datos
        puts "(Nombre de etiqueta: #{@nombre}, Grasas: #{@grasas}, Grasas saturadas: #{@grasas_sat}, Grasas monosaturadas: #{@grasas_mono}, Grasas polisaturadas: #{@grasas_poli}, Hidratos: #{@hidratos}, Azúcares: #{@azucares}, Polialcoholes: #{@polialcoholes}, Almidón: #{@almidon}, Fibra: #{@fibra}, Proteinas: #{@proteinas}, Sal: #{@sal})"
    end

    def <=> (other)
        valor_ener_kcal <=> other.valor_ener_kcal
    end

    def enumerable
        valor_ener_kcal
    end
end