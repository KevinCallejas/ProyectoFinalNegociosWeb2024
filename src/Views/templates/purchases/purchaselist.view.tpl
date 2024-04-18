<section><h2 class="text-2xl font-bold mb-4 mx-4"> PURCHASE</h2>
<div class="overflow-x-auto">
<table class="min-w-full bg-white border border-gray-300 mx-6">
<thead class="text-center justify-center mx-2">
<tr>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">ID_PURCHASE</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">PURCHASE_DATE</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">TOTAL</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">DETAILS</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">USERCOD</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">PAYMENTS</th><th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b"><a href="index.php?page=Purchases_Purchases&mode=INS">ADD</a></th>
	</tr>
</thead><tbody>{{foreach purchase}}<tr><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchases_Purchases&mode=DSP&id_purchase={{id_purchase}} ">{{id_purchase}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchases_Purchases&mode=DSP&id_purchase={{id_purchase}} ">{{purchase_date}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchases_Purchases&mode=DSP&id_purchase={{id_purchase}} ">{{total}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchases_Purchases&mode=DSP&id_purchase={{id_purchase}} ">{{details}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchases_Purchases&mode=DSP&id_purchase={{id_purchase}} ">{{usercod}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchases_Purchases&mode=DSP&id_purchase={{id_purchase}} ">{{payments}}</a></td>
            <td class"p-2 text-center">
                <a class="text-green-500 hover:text-green-700" href="index.php?page=Purchases_Purchases&mode=UPD&id_purchase={{id_purchase}}" >Edit</a> 
                <a class="text-red-500 hover:text-red-700" href="index.php?page=Purchases_Purchases&mode=DEL&id_purchase={{id_purchase}}" >Delete</a>
            </td>
	</tr>
 {{endfor purchase}}</tbody>
</table>
</div> </section>

<style>
table {
    max-width: 100%;
    overflow: hidden; 
    width: 100%; /* Ocupa el ancho completo de su contenedor */
}

table thead {
    width: 300px; /* Ancho específico para el encabezado si lo deseas */
}
td {
    word-wrap: break-word; /* Permitir que el texto se envuelva automáticamente */
}
</style>