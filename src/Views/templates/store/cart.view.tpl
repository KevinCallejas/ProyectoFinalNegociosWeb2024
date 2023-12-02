<div class="container mx-auto p-6">
    <h1 class="text-3xl font-semibold mb-6">Carrito</h1>
    <ul class="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-3">
      
        <li class="bg-white rounded-lg overflow-hidden shadow-md">
            <div class="p-4">
                <img src="URL_DE_LA_IMAGEN" alt="Nombre del Producto" class="w-full h-48 object-cover mb-4">
                <h3 class="text-lg font-semibold mb-2">Nombre del Producto</h3>
                <p class="text-gray-600 mb-2">Descripción del Producto</p>
                <p class="text-gray-700 font-bold">Precio: $XX.XX</p>
                <div class="mt-4 flex justify-between items-center">
                    
                   
                    <a href="#" class="text-green-500 hover:text-green-700">Add</a>
                    <p class="text-gray-700 font-bold">2</p>
                    <a href="#" class="text-green-500 hover:text-green-700">Remove</a>
                    <button class="px-4 py-2 bg-gray-800 text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700">
                        Delete from carrito
                    </button>
                </div>
            </div>
        </li>
        
    </ul>

    <div id="paypal-button-container"></div>
    <p id="result-message"></p>
    <script src="https://www.paypal.com/sdk/js?client-id=Acj_gVlStbcPSVckLdSVIZdJyxUAAjMMWR_NJQzbwU4TSqsm5rNdRlBv4vmie_4Z64W6dEnQCJD-ebXS&components=buttons&enable-funding=paylater,venmo,card" data-sdk-integration-source="integrationbuilder_sc"></script>
    <script src="app.js"></script>
</div>