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

    # Método para obtener la cantidad de grasas en Kj
    def grasas_kj               
        (@grasas * 37).round(2)
    end

    # Método para obtener la cantidad de grasas monosaturadas en Kj
    def grasas_mono_kj          
        (@grasas_mono * 37).round(2)
    end

    # Método para obtener la cantidad de grasas polisaturadas en Kj
    def grasas_poli_kj          
        (@grasas_poli * 37).round(2)
    end

    # Método para obtener la cantidad de hidratos de carbono en Kj
    def hidratos_kj             
        (@hidratos * 17).round(2)
    end

    # Método para obtener la cantidad de hidratos de carbono en Kj
    def polialcohol_kj          
        (@polialcoholes * 10).round(2)
    end

    # Método para obtener la cantidad de almidon en Kj
    def almidon_kj              
        (@almidon * 17).round(2)
    end

    # Método para obtener la cantidad de fibra en Kj
    def fibra_kj                
        (@fibra * 8).round(2)
    end

    # Método para obtener la cantidad de proteínas en Kj
    def proteinas_kj            
        (@proteinas * 17).round(2)
    end

    # Método para obtener la cantidad de sal en Kj
    def sal_kj                  
        (@sal * 25).round(2)
    end

    # Método para obtener el valor energético en Kj
    def valor_ener_kj           
       val_ener = (grasas_kj + grasas_mono_kj + grasas_poli_kj + hidratos_kj + polialcohol_kj + almidon_kj + fibra_kj + proteinas_kj + sal_kj).round(2)
    end

    # Método para obtener grasas en Kcal
    def grasas_kcal             
        (@grasas * 9).round(2)
    end

    # Método para obtener grasas monosaturadas en Kcal
    def grasas_mono_kcal        
        (@grasas_mono * 9).round(2)
    end

    # Método para obtener grasas polisaturadas en Kcal
    def grasas_poli_kcal        
        (@grasas_poli * 9).round(2)
    end

    # Método para obtener hidratos en Kcal
    def hidratos_kcal           
        (@hidratos * 4).round(2)
    end

    # Método para obtener polialcoholes en Kcal
    def polialcohol_kcal        
        (@polialcoholes * 2.4).round(2)
    end

    # Método para obtener almidón en Kcal
    def almidon_kcal            
        (@almidon * 4).round(2)
    end

    # Método para obtener fibra en Kcal
    def fibra_kcal              
        (@fibra * 2).round(2)
    end

    # Método para obtener proteínas en Kcal
    def proteinas_kcal          
        (@proteinas * 4).round(2)
    end

    # Método para obtener sal en Kcal
    def sal_kcal                
        (@sal * 6).round(2)
    end

    # Método para obtener valor enerético en Kcal
    def valor_ener_kcal         
        (grasas_kcal + grasas_mono_kcal + grasas_poli_kcal+ hidratos_kcal + polialcohol_kcal + almidon_kcal + fibra_kcal + proteinas_kcal + sal_kcal).round(2)
    end

    # Método para obtener %IR valor energético
    def valor_ener_ir           
        ((valor_ener_kj / 8400) * 100).round(2) 
    end

    # Método para obtener %IR grasas
    def grasas_ir               
        ((@grasas / 70) * 100).round(2)
    end

    # Método para obtener %IR grasas saturadas
    def saturadas_ir            
         ((@grasas_sat / 20) * 100).round(2)
    end 
    
    # Método para obtener %IR hidratos
    def hidratos_ir             
         ((@hidratos / 260) * 100).round(2)
    end

    # Método para obtener %IR azúcares
    def azucares_ir             
         ((@azucares / 90) * 100).round(2)
    end

    # Método para obtener %IR proteínas
    def proteinas_ir            
         ((@proteinas / 50) * 100).round(2)
    end

    # Método para obtener %IR sales
    def sal_ir                  
         ((@sal / 6) * 100).round(2)
    end

    # Método to_s de visualización de datos
    def to_s            
        puts "(Nombre de etiqueta: #{@nombre}, Grasas: #{@grasas}, Grasas saturadas: #{@grasas_sat}, Grasas monosaturadas: #{@grasas_mono}, Grasas polisaturadas: #{@grasas_poli}, Hidratos: #{@hidratos}, Azúcares: #{@azucares}, Polialcoholes: #{@polialcoholes}, Almidón: #{@almidon}, Fibra: #{@fibra}, Proteinas: #{@proteinas}, Sal: #{@sal})"
    end

    # Método <=> del mixin Comparable
    def <=> (other)
        valor_ener_kcal <=> other.valor_ener_kcal
    end

    # Método + del mixin Comparable
    def + (other)
        valor_ener_kcal + other.valor_ener_kcal
    end
end