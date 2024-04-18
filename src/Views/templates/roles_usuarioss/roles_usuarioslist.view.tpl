<section><h2 class="text-2xl font-bold mb-4 mx-4"> ROLES_USUARIOS</h2>
<div class="overflow-x-auto">
<table class="min-w-full bg-white border border-gray-300 mx-6">
<thead class="text-center justify-center mx-2">
<tr>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">USERCOD</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">ROLESCOD</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">ROLEUSEREST</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">ROLEUSERFCH</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">ROLEUSEREXP</th><th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b"><a href="index.php?page=Roles_usuarioss_Roles_usuarioss&mode=INS">ADD</a></th>
	</tr>
</thead><tbody>{{foreach roles_usuarios}}<tr><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Roles_usuarioss_Roles_usuarioss&mode=DSP&usercod={{usercod}} ">{{usercod}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Roles_usuarioss_Roles_usuarioss&mode=DSP&usercod={{usercod}} ">{{rolescod}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Roles_usuarioss_Roles_usuarioss&mode=DSP&usercod={{usercod}} ">{{roleuserest}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Roles_usuarioss_Roles_usuarioss&mode=DSP&usercod={{usercod}} ">{{roleuserfch}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Roles_usuarioss_Roles_usuarioss&mode=DSP&usercod={{usercod}} ">{{roleuserexp}}</a></td>
            <td class"p-2 text-center">
                <a class="text-green-500 hover:text-green-700" href="index.php?page=Roles_usuarioss_Roles_usuarioss&mode=UPD&usercod={{usercod}}" >Edit</a> 
                <a class="text-red-500 hover:text-red-700" href="index.php?page=Roles_usuarioss_Roles_usuarioss&mode=DEL&usercod={{usercod}}" >Delete</a>
            </td>
	</tr>
 {{endfor roles_usuarios}}</tbody>
</table>
</div> </section>