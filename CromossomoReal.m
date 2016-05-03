classdef CromossomoReal < Cromossomo
    
     methods
        function obj = CromossomoReal(nome,indice,tamanho,min,max)
            obj = obj@Cromossomo(nome,TipoRepresentacao.Real,indice,tamanho,min,max);            
        end
        
        function val = valorReal(obj,valorCodificado)
            val = valorCodificado;
        end
     end
end