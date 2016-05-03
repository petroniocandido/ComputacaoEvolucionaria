%var1 = CromossomoBinario('A',0,5,20,30);
%var2 = CromossomoBinario('2',0,3,1,5);
%var1.dump()

%ga1 = AlgoritmoGenetico(10,TipoRepresentacao.Binaria,TipoSelecao.Roleta);
%ga1 = ga1.addCromossomo(var1);
%ga1 = ga1.addCromossomo(var2);
%ga1 = ga1.initPopulacao();

ga1 = OtimizaFunc();
ga1 = ga1.initPopulacao();
ga1.dump()

%ga1.getGenotipo(3,1)
%ga1.getFenotipo(3,1)
ga1.getFenotipos()
ga1.getFitnessP()