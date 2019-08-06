object leclerc
{
	var numero_piloto = 16
}

object vettel
{
	var numero_piloto = 5
}

object verstappen
{
	var numero_piloto = 33
}

object gasly
{
	var numero_piloto = 10
}

object hamilton
{
	var numero_piloto = 44
}

object bottas
{
	var numero_piloto = 77
}
object suplente
{
	var numero_piloto=100
}
object reemplazo
{
	method a_bottas()
	{
		mercedes.remove(bottas)
		mercedes.add(suplente)
	}
}

	const ferrari=#{leclerc,vettel}
	const red_bull=#{verstappen,gasly}
	const mercedes=#{hamilton,bottas}
	