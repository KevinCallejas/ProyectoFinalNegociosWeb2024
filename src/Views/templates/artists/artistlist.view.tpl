<div class="flex items-center justify-between mb-4">
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
			<a href="index.php?page=Artists_Artists&mode=INS" class="px-4 py-2 bg-gray-800 text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700">
                Insert
            </a>
        </div>
    </div>
</div>




<section class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 pb-10">
    {{foreach artist}}
    <div class="relative bg-gray-900 border border-gray-300 rounded p-4 overflow-hidden">
        <a href="index.php?page=Artists_Artists&mode=DSP&id_artist={{id_artist}}" class="flex flex-col items-center h-full">
            <h3 class="text-xl font-bold mb-2 text-white">{{name_artist}}</h3>
            <img src="{{image_artist}}" alt="{{name_artist}}" class="w-full h-40 object-cover mb-2 rounded-lg">

			<div class="flex flex-col mx-auto pb-10">
				<p class="text-gray-300 mb-2 h-auto w-10">
					<span class="font-bold">ID: </span>{{id_artist}}
				</p>
				
				<p class="text-gray-300 mb-2"><span class="font-bold">Date of Birth:</span> {{date_of_birth_artist}}</p>
				<p class="text-gray-300 mb-2 "><span class="font-bold">Country:</span> {{country_artist}}</p>
				<p class="text-gray-300 mb-2"><span class="font-bold">Status:</span> {{status_artist}}</p>
				<p class="text-gray-300 mb-2"><span class="font-bold">Bio:</span> {{artist_bio}}</p>
			</div>
			
            <div class="absolute bottom-0 left-0 right-0 flex justify-center p-10">
                <a href="index.php?page=Artists_Artists&mode=UPD&id_artist={{id_artist}}" class="text-green-500 hover:text-green-700 mr-2">Edit</a>
                <a href="index.php?page=Artists_Artists&mode=DEL&id_artist={{id_artist}}" class="text-red-500 hover:text-red-700">Delete</a>
            </div>
        </a>
    </div>
    {{endfor artist}}
</section>
<script>
const searchButton = document.getElementById('searchbutton');
const searchInput = document.querySelector('#searchbar');

searchButton.addEventListener('click', function() {
    const searchTerm = searchInput.value; 
    alert(searchTerm);
});

</script>
