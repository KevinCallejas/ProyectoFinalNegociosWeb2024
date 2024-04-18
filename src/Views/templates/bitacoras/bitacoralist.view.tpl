<section><h2 class="text-2xl font-bold mb-4 mx-4"> BITACORA</h2>
<div class="overflow-x-auto">
<table class="min-w-full bg-white border border-gray-300 mx-6">
<thead class="text-center justify-center mx-2">
<tr>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">BITACORACOD</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">BITACORAFCH</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">BITPROGRAMA</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">BITDESCRIPCION</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">BITOBSERVACION</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">BITTIPO</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">BITUSUARIO</th><th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b"><a href="index.php?page=Bitacoras_Bitacoras&mode=INS">ADD</a></th>
	</tr>
</thead><tbody>{{foreach bitacora}}<tr><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Bitacoras_Bitacoras&mode=DSP&bitacoracod={{bitacoracod}} ">{{bitacoracod}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Bitacoras_Bitacoras&mode=DSP&bitacoracod={{bitacoracod}} ">{{bitacorafch}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Bitacoras_Bitacoras&mode=DSP&bitacoracod={{bitacoracod}} ">{{bitprograma}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Bitacoras_Bitacoras&mode=DSP&bitacoracod={{bitacoracod}} ">{{bitdescripcion}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Bitacoras_Bitacoras&mode=DSP&bitacoracod={{bitacoracod}} ">{{bitobservacion}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Bitacoras_Bitacoras&mode=DSP&bitacoracod={{bitacoracod}} ">{{bittipo}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Bitacoras_Bitacoras&mode=DSP&bitacoracod={{bitacoracod}} ">{{bitusuario}}</a></td>
            <td class"p-2 text-center">
                <a class="text-green-500 hover:text-green-700" href="index.php?page=Bitacoras_Bitacoras&mode=UPD&bitacoracod={{bitacoracod}}" >Edit</a> 
                <a class="text-red-500 hover:text-red-700" href="index.php?page=Bitacoras_Bitacoras&mode=DEL&bitacoracod={{bitacoracod}}" >Delete</a>
            </td>
	</tr>
 {{endfor bitacora}}</tbody>
</table>
</div> </section>
