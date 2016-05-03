classdef (Abstract) Cromossomo
    properties(GetAccess = 'public', SetAccess = 'protected')
        nome;
        tipo;
        precisao;
        min;
        max;
    end
    properties(GetAccess = 'public', SetAccess = 'public')
        indice;
    end
    methods (Abstract)
        val = valorReal(obj, valorCodificado);
    end
    methods
        function obj = Cromossomo(nome,tipo,indice,precisao,min,max)
            obj.nome = nome;
            obj.tipo = tipo;
            obj.indice = indice;
            obj.precisao = precisao;
            obj.min = min;
            obj.max = max;
        end
        function dump(obj)
            disp(obj);
        end
    end
end