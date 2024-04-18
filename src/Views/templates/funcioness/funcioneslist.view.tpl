<section><h2 class="text-2xl font-bold mb-4 mx-4"> FUNCIONES</h2>
<div class="overflow-x-auto">
<table class="min-w-full bg-white border border-gray-300 mx-6">
<thead class="text-center justify-center mx-2">
<tr>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">FNCOD</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">FNDSC</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">FNEST</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">FNTYP</th><th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b"><a href="index.php?page=Funcioness_Funcioness&mode=INS">ADD</a></th>
	</tr>
</thead><tbody>{{foreach funciones}}<tr><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Funcioness_Funcioness&mode=DSP&fncod={{fncod}} ">{{fncod}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Funcioness_Funcioness&mode=DSP&fncod={{fncod}} ">{{fndsc}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Funcioness_Funcioness&mode=DSP&fncod={{fncod}} ">{{fnest}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Funcioness_Funcioness&mode=DSP&fncod={{fncod}} ">{{fntyp}}</a></td>
            <td class"p-2 text-center">
                <a class="text-green-500 hover:text-green-700" href="index.php?page=Funcioness_Funcioness&mode=UPD&fncod={{fncod}}" >Edit</a> 
                <a class="text-red-500 hover:text-red-700" href="index.php?page=Funcioness_Funcioness&mode=DEL&fncod={{fncod}}" >Delete</a>
            </td>
	</tr>
 {{endfor funciones}}</tbody>
</table>
</div> </section>

