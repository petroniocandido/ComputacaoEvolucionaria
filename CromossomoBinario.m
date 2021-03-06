classdef CromossomoBinario < Cromossomo
    
     methods
        function obj = CromossomoBinario(nome,indice,tamanho,min,max)
            obj = obj@Cromossomo(nome,TipoRepresentacao.Binaria,indice,tamanho,min,max);            
        end
        
        function val = valorReal(obj,valorCodificado)
            val = obj.min + ((obj.max - obj.min)/(2^obj.precisao - 1))*binaryVectorToDecimal((valorCodificado));
        end
                
     end
end