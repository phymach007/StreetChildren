<!doctype html>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>This is my map</title>
        
        <style>
		html, body ,   #map-canvus{ height: 100%;
			margin: 0; padding: 0;
        
		}
	</style>
	
	 <script>
             var locations = [
  ['Bondi Beach', 23.728783, 90.393791, 4],
   ['Coogee Beach', 23.923036, 90.259052, 5],
  ['Cronulla Beach', 23.028249, 90.157507, 3],
  ['Manly Beach', 23.80010128657071, 90.28747820854187, 2],
['Maroubra Beach', 23.950198, 90.259302, 1]
];
	 	function initialize(){
	 		var mapOptions ={
             zoom: 8,
             center: new google.maps.LatLng
             (23.728783, 90.393791)
             
	 		};
                        
	 		var map = new google.maps.Map(
	 			document.getElementById('map-canvus'),
	 			mapOptions);
                                
     var count;

  for (count = 0; count < locations.length; count++) {  
    new google.maps.Marker({
      position: new google.maps.LatLng(locations[count][1], locations[count][2]),
      map: map,
      title: locations[count][0]
      });
   }
	 	}
      function loadScript(){
         var script = document.createElement('script');
         script.type = 'text/javascript';
         script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&' + 'callback=initialize&key=AIzaSyB-fqh3gjIuuD8Ra--QzjZAaZN8vdekRUc';
         document.body.appendChild(script);

      }
      
      window.onload=loadScript;
	 </script>
        
</head>
<body>
<div id="map-canvus" height="100%" width="25%"></div>
</body>
</html>


