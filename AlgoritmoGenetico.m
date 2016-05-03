classdef (Abstract) AlgoritmoGenetico
    properties(GetAccess = 'public', SetAccess = 'protected')
        nbpop;
        L = 1;
        nvar = 0;
        representacao;
        selecao;
        cromossomos;
        P = [];
        geracoes = 0;
    end
    %properties(Abstract)
    %    Random(obj);
    %end
    methods(Abstract)
        h(obj,v);
        %function obj = VerificaCriterioParada(obj);
        %function obj = Selecionar(obj);
        %function obj = Reproduzir(obj);
    end
    methods
        function obj = AlgoritmoGenetico(nbpop,rep,sel)
            obj.nbpop = nbpop;
            obj.representacao = rep;
            obj.selecao = sel;
            if rep == TipoRepresentacao.Binaria
                obj.cromossomos = CromossomoBinario.empty;
            elseif rep == TipoRepresentacao.Gray
                obj.cromossomos = CromossomoGray.empty;
            else
                obj.cromossomos = CromossomoReal.empty;
            end
        end
        
        function obj = set.cromossomos(obj, val)
            obj.cromossomos = val;
        end
        
        function dump(obj)
            disp(obj)
        end
        
        function obj = addCromossomo(obj,crom)
            obj.nvar = obj.nvar + 1;
            crom.indice = obj.L;
            obj.cromossomos = [obj.cromossomos crom];            
            obj.L = obj.L + crom.precisao;
        end
                
        function val = getGenotipo(obj,i,k)
            crom = obj.cromossomos(k);
            val = obj.P(i,crom.indice:crom.indice+crom.precisao-1);
        end
        
        function val = getFenotipos(obj)
            val = zeros(obj.nbpop,obj.nvar);
            for i = 1:obj.nbpop
                for k = 1:obj.nvar
                    crom = obj.cromossomos(k);
                    val(i,k) = crom.valorReal( obj.P(i,crom.indice:crom.indice+crom.precisao-1) );
                end
            end
        end
        
        function val = getFenotipo(obj,i,k)
            crom = obj.cromossomos(k);
            val = crom.valorReal( obj.P(i,crom.indice:crom.indice+crom.precisao-1) );
        end
        
        function obj = initPopulacao(obj)
            if obj.representacao == TipoRepresentacao.Binaria || obj.representacao == TipoRepresentacao.Gray
                obj.P = randi([0 1],obj.nbpop, obj.L);
            else
                obj.P = rand([0 1],obj.nbpop, obj.L);
            end
        end
        
        function val = getFitness(obj,i)
            h = obj.h(i);
            val = 1/(1+h);
        end
        
        function val = getFitnessP(obj)
            val = zeros(1,obj.nbpop);
            for i = 1:obj.nbpop
                val(i) = obj.getFitness(i);
            end
        end
    end
    methods(Access = protected)
        
    end
end