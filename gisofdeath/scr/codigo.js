
	var map = L.map('map', {
			zoomControl:true,
			maxZoom:25,
			layers:[OSM],
			maxBounds: [
        //south west
        [38.6110525413577, -0.274872779846191],
        //north east
        [38.6062067068183, -0.265688896179199]]
		}).setView([38.6093674353207, -0.268000960350037], 19);
		


		// Creo la variable del Geogjson

	var alt_1 = L.geoJson(alt1, {style: style1}).addTo(map);
	var alt_2 = L.geoJson(alt2, {style: style2}).addTo(map);
	var alt_3 = L.geoJson(alt3, {style: style3}).addTo(map);
	var alt_4 = L.geoJson(alt4, {style: style4}).addTo(map);
	var alt_5 = L.geoJson(alt5, {style: style5}).addTo(map);
	var limite = L.geoJson(cemetery, {style: styleCemetery}).addTo(map);  

		// creo variable del grupo de capas superpuestas (overlayers)

	var layers = L.LayerGroup([alt_1, alt_2, alt_3, alt_4, alt_5, limite]);

		var baselayers = {
				"OSM":OSM,
				"PNOA": PNOA
		};

		var overlayers = {

			"Level 1": alt_1,
			"Level 2": alt_2,
			"Level 3": alt_3,
			"Level 4": alt_4,
			"Level 5": alt_5,
			"Cemetery": limite

		};

		L.control.layers(baselayers, overlayers,{collapsed:false}).addTo(map);
		L.control.scale({options: {position: 'bottomleft',maxWidth: 100,metric: true,imperial: false,updateWhenIdle: false}}).addTo(map);

