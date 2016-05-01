classdef AlgoritmoGenetico
    properties
        nbpop;
        nvar;
        representacao;
        selecao;
    end
    methods
        function obj = AlgoritmoGenetico(nbpop,nvar,rep,sel)
            obj.nbpop = nbpop;
            obj.nvar = nvar;
            obj.representacao = rep;
            obj.selecao = sel;
        end
        
        function dump(obj)
            
        end
    end
end