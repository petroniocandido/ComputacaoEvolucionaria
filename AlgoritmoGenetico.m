classdef AlgoritmoGenetico
    properties(GetAccess = 'public', SetAccess = 'private')
        nbpop;
        nvar = 0;
        representacao;
        selecao;
        cromossomos = Cromossomo.empty;
    end
    methods
        function obj = AlgoritmoGenetico(nbpop,rep,sel)
            obj.nbpop = nbpop;
            obj.representacao = rep;
            obj.selecao = sel;
        end
        
        function dump(obj)
            disp(obj)
        end
        
        function obj = addCromossomo(obj,crom)
            obj.cromossomos = [obj.cromossomos crom];
            obj.nvar = obj.nvar + 1;
        end
    end
    methods(Access = protected)
        
    end
end