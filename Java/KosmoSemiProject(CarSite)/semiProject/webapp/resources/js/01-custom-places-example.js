function runExample3() {
    $("#custom-places").mapsed({
    	zoom:7,
		searchOptions: {
			enabled: true,
			//initSearch: "Football in Leeds",
			geoSearch: "Hotels near {POSITION}",
			placeholder: "Search ..."
		},
		showOnLoad: 	
		[
			// City Varieties
			// - 한국소프트웨어 인재개발원 37.479105, 126.878867
			{
				// flag that this place should have the tooltip shown when the map is first loaded
				autoShow: true,
				// flags the user can edit this place
				canEdit: false,
				lat: 37.479105,
				lng:126.878867,
				name: "지점 1",
				street: "서울 금천구 가산동",
				userData: 99,
			},
			// Random made up CUSTOM place
			{
				// flag that this place should have the tooltip shown when the map is first loaded
				autoShow: true,
				lat: 37.479105,
				lng: 126.878867,
				name: "지점 2",
				street: "서울 금천구 가산동",
				userData: 99
			}

		]
		
	});									
}


$(document).ready(function() {
	runExample3();
});


