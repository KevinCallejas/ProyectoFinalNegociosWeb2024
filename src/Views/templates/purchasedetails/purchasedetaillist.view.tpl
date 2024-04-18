<section><h2 class="text-2xl font-bold mb-4 mx-4"> PURCHASEDETAIL</h2>
<div class="overflow-x-auto">
<table class="min-w-full bg-white border border-gray-300 mx-6">
<thead class="text-center justify-center mx-2">
<tr>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">ID_PURCHASE</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">ID_ITEM_REFERENCE</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">QUANTITY</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">UNITARY_PRICE</th><th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b"><a href="index.php?page=Purchasedetails_Purchasedetails&mode=INS">ADD</a></th>
	</tr>
</thead><tbody>{{foreach purchasedetail}}<tr><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchasedetails_Purchasedetails&mode=DSP&id_purchase={{id_purchase}} ">{{id_purchase}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchasedetails_Purchasedetails&mode=DSP&id_purchase={{id_purchase}} ">{{id_item_reference}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchasedetails_Purchasedetails&mode=DSP&id_purchase={{id_purchase}} ">{{quantity}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Purchasedetails_Purchasedetails&mode=DSP&id_purchase={{id_purchase}} ">{{unitary_price}}</a></td>
            <td class"p-2 text-center">
                <a class="text-green-500 hover:text-green-700" href="index.php?page=Purchasedetails_Purchasedetails&mode=UPD&id_purchase={{id_purchase}}" >Edit</a> 
                <a class="text-red-500 hover:text-red-700" href="index.php?page=Purchasedetails_Purchasedetails&mode=DEL&id_purchase={{id_purchase}}" >Delete</a>
            </td>
	</tr>
 {{endfor purchasedetail}}</tbody>
</table>
</div> </section>