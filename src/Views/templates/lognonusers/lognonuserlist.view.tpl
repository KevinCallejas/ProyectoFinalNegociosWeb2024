{{if isADMIN}}
<div class="flex items-center justify-between mb-4 mx-4">
        <div class="relative w-full flex items-center">
            <input type="text" id="searchbar" name="searchbar" placeholder="Name or ID" class="w-2/3 px-4 py-2 pl-10 pr-8 border border-gray-300 rounded-md">
            <div class="absolute inset-y-0 left-0 flex items-center pl-3">
                <svg class="h-6 w-5 text-gray-400 mb-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-5.2-5.2m2.8 5.2a9 9 0 11-12.727-12.727 9 9 0 1112.727 12.727z" />
                </svg>
            </div>
            <div class="absolute inset-y-0 right-0 flex items-center pr-3">
                <button id="searchbutton" name="searchbutton" class="px-4 py-2 bg-gray-800 text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700 mr-2">
                    Search
                </button>
                
            </div>
        </div>
    </div><section><h2 class="text-2xl font-bold mb-4 mx-4"> LOGNONUSER</h2>
<div class="overflow-x-auto">
<table class="min-w-full bg-white border border-gray-300">
<thead>
<tr>
	<th class="py-2 px-4 border-b">ID_LOGNONUSER</th>
	<th class="py-2 px-4 border-b">LOG_DATE</th>
	<th class="py-2 px-4 border-b">ID_COOKIE</th>
	<th class="py-2 px-4 border-b">LOG_COD</th><th><a href="index.php?page=Lognonusers_Lognonusers&mode=INS">Nuevo</a></th>
	</tr>
</thead><tbody>{{foreach lognonuser}}<tr><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Lognonusers_Lognonusers&mode=DSP&id_logNonUser={{id_logNonUser}} ">{{id_lognonuser}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Lognonusers_Lognonusers&mode=DSP&id_logNonUser={{id_logNonUser}} ">{{log_date}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Lognonusers_Lognonusers&mode=DSP&id_logNonUser={{id_logNonUser}} ">{{id_cookie}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Lognonusers_Lognonusers&mode=DSP&id_logNonUser={{id_logNonUser}} ">{{log_cod}}</a></td>
            <td class"p-2 text-center">
                <a class="text-green-500 hover:text-green-700" href="index.php?page=Lognonusers_Lognonusers&mode=UPD&id_logNonUser={{id_logNonUser}}" >Edit</a> 
                <a class="text-red-500 hover:text-red-700" href="index.php?page=Lognonusers_Lognonusers&mode=DEL&id_logNonUser={{id_logNonUser}}" >Delete</a>
            </td>
	</tr>
 {{endfor lognonuser}}</tbody>
</table>
</div> </section>
{{endif isADMIN}}