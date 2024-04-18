<section><h2 class="text-2xl font-bold mb-4 mx-4"> PRODUCTS</h2>
<div class="overflow-x-auto">
<table class="min-w-full bg-white border border-gray-300 mx-6">
<thead class="text-center justify-center mx-2">
<tr>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">PRODUCTID</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">PRODUCTNAME</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">PRODUCTDESCRIPTION</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">PRODUCTPRICE</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">PRODUCTIMGURL</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">PRODUCTSTOCK</th>
	<th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b">PRODUCTSTATUS</th><th class="py-2 px-2 text-center justify-center text-white bg-blue-500 border-b"><a href="index.php?page=Productss_Productss&mode=INS">ADD</a></th>
	</tr>
</thead><tbody>{{foreach products}}<tr><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Productss_Productss&mode=DSP&productId={{productId}} ">{{productid}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Productss_Productss&mode=DSP&productId={{productId}} ">{{productname}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Productss_Productss&mode=DSP&productId={{productId}} ">{{productdescription}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Productss_Productss&mode=DSP&productId={{productId}} ">{{productprice}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Productss_Productss&mode=DSP&productId={{productId}} ">{{productimgurl}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Productss_Productss&mode=DSP&productId={{productId}} ">{{productstock}}</a></td><td class="p-2 text-center"><a class="text-blue-500 hover:text-blue-700" href="index.php?page=Productss_Productss&mode=DSP&productId={{productId}} ">{{productstatus}}</a></td>
            <td class"p-2 text-center">
                <a class="text-green-500 hover:text-green-700" href="index.php?page=Productss_Productss&mode=UPD&productId={{productId}}" >Edit</a> 
                <a class="text-red-500 hover:text-red-700" href="index.php?page=Productss_Productss&mode=DEL&productId={{productId}}" >Delete</a>
            </td>
	</tr>
 {{endfor products}}</tbody>
</table>
</div> </section>