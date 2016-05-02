classdef  AlgoritmoGenetico
    properties(GetAccess = 'public', SetAccess = 'protected')
        nbpop;
        L = 0;
        nvar = 0;
        representacao;
        selecao;
        cromossomos;
    end
    %properties(Abstract)
    %    Random(obj);
    %end
    %methods(Abstract)
        %function fit = Fitness(genotipo);
        %function obj = VerificaCriterioParada(obj);
        %function obj = Selecionar(obj);
        %function obj = Reproduzir(obj);
    %end
    methods
        function obj = AlgoritmoGenetico(nbpop,rep,sel)
            obj.nbpop = nbpop;
            obj.representacao = rep;
            obj.selecao = sel;
            if rep == TipoRepresentacao.Binaria
                obj.cromossomos = CromossomoBinario.empty;
            end
        end
        
        function obj = set.cromossomos(obj, val)
            obj.cromossomos = val;
        end
        
        function dump(obj)
            disp(obj)
        end
        
        function obj = addCromossomo(obj,crom)
            obj.cromossomos = [obj.cromossomos crom];
            obj.nvar = obj.nvar + 1;
            obj.L = obj.L + crom.precisao;
        end
    end
    methods(Access = protected)
        
    end
end