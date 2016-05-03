var1 = CromossomoBinario('teste',0,5,20,30);
%var1.dump()

ga1 = AlgoritmoGenetico(10,TipoRepresentacao.Binaria,TipoSelecao.Roleta);
ga1 = ga1.addCromossomo(var1);
ga1 = ga1.initPopulacao();
ga1.dump()

var1.valorReal(ga1.P(1))