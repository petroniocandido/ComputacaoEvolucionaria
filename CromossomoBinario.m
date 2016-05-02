classdef CromossomoBinario < Cromossomo
    properties
        valorCodificado = [];
    end
     methods
        function obj = CromossomoBinario(nome,indice,tamanho,min,max)
            obj = obj@Cromossomo(nome,TipoRepresentacao.Binaria,indice,tamanho,min,max);            
        end
     end
end