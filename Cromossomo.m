classdef Cromossomo
    properties
        nome;
        tipo;
        indice;
        tamanho;
        min;
        max;
    end
    methods
        function obj = Cromossomo(nome,tipo,indice,tamanho,min,max)
            obj.nome = nome;
            obj.tipo = tipo;
            obj.indice = indice;
            obj.tamanho = tamanho;
            obj.min = min;
            obj.max = max;
        end
    end
end