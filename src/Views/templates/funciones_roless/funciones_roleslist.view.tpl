<section><h2 class="text-2xl font-bold mb-4 mx-4"> FUNCIONES_ROLES</h2>
<div class="overflow-x-auto">
<table class="min-w-full bg-white border border-gray-300 mx-6">
<thead class="text-center justify-center mx-2">
<tr>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">ROLESCOD</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">FNCOD</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">FNROLEST</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">FNEXP</th><th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b"><a href="index.php?page=Funciones_roless_Funciones_roless&mode=INS">ADD</a></th>
	</tr>
</thead><tbody>{{foreach funciones_roles}}<tr><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Funciones_roless_Funciones_roless&mode=DSP&rolescod={{rolescod}} ">{{rolescod}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Funciones_roless_Funciones_roless&mode=DSP&rolescod={{rolescod}} ">{{fncod}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Funciones_roless_Funciones_roless&mode=DSP&rolescod={{rolescod}} ">{{fnrolest}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Funciones_roless_Funciones_roless&mode=DSP&rolescod={{rolescod}} ">{{fnexp}}</a></td>
            <td class"p-2 text-center">
                <a class="text-green-500 hover:text-green-700" href="index.php?page=Funciones_roless_Funciones_roless&mode=UPD&rolescod={{rolescod}}" >Edit</a> 
                <a class="text-red-500 hover:text-red-700" href="index.php?page=Funciones_roless_Funciones_roless&mode=DEL&rolescod={{rolescod}}" >Delete</a>
            </td>
	</tr>
 {{endfor funciones_roles}}</tbody>
</table>
</div> </section>