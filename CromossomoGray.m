classdef CromossomoGray < Cromossomo
    
     methods
        function obj = CromossomoGray(nome,indice,tamanho,min,max)
            obj = obj@Cromossomo(nome,TipoRepresentacao.Gray,indice,tamanho,min,max);            
        end
        
        function val = valorReal(obj,valorCodificado)
            val = obj.min + ((obj.max - obj.min)/(2^obj.precisao - 1))*binaryVectorToDecimal(gray2bin(valorCodificado));
        end
     end
end