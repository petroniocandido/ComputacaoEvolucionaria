classdef OtimizaFunc < AlgoritmoGenetico
    methods
        function obj = OtimizaFunc()
            obj = obj@AlgoritmoGenetico(10,TipoRepresentacao.Binaria,TipoSelecao.Roleta);
            var1 = CromossomoBinario('A',0,5,-5,5);
            obj = obj.addCromossomo(var1);
        end
        
        function val = h(obj,i)
            x = obj.getFenotipo(i,1);
            val = abs(x)^2 + abs( abs(x) - mod(abs(x),5) - 5*fix(abs(x)/5) ) ;
        end
    end
    methods(Static)
        function v = f(x)
            v = x^2;
        end
        
        function v = r1(x)
            v = x^2;
        end
    end
end