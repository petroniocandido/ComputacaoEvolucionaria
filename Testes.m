var1 = CromossomoBinario('teste',0,0,0,0);
var1.dump()

ga1 = AlgoritmoGenetico(10,TipoRepresentacao.Binaria,TipoSelecao.Roleta);
ga1 = ga1.addCromossomo(var1);
ga1.dump()