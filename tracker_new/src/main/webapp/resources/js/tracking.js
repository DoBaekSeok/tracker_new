   
	var latitude = document.getElementById("latitude");
	var longitude = document.getElementById("longitude");
	var tracking = false;
	var latlngList = [];
	var onEquipNo = 0;
	var marker;
	var map;
	var mapOptions;	
	var myIcon = new google.maps.MarkerImage("/tracker/resources/img/marker/iconImg.png", null, null, null, new google.maps.Size(50,50));
	var timer;
	
    initialize();
    
    function request(){
    	
    	$.ajax ({
			url : '/tracker/tracking/gps.action',
			type : 'GET',
			async : false,
			data : {
				onEquipNo : $("#onEquipNo").val()
			},
			datatype : 'json',
			success : function (data) {
				if(onEquipNo != document.getElementById("onEquipNo").value){
					onEquipNo = document.getElementById("onEquipNo").value;
					initialize();	
					map.panTo(new google.maps.LatLng(data.results[0].latitude, data.results[0].longitude));
					for(var i=0;i<latlngList.length;i++){
						latlngList.length = 0;
					}
				}
				
				for(var i=0;i<data.results.length;i++){
					latlngList[i] = new google.maps.LatLng(data.results[i].latitude, data.results[i].longitude);									
				}
				line(latlngList);
				
				marker_move(data.results[0].latitude, data.results[0].longitude);

				var locating = document.getElementById("latitude").value + "," + document.getElementById("longitude").value + "&language=ko";
				var geoUrl = "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + locating;
				$.ajax ({
					url : geoUrl,
					type : 'GET',
					async : false,
					datatype : 'json',
					success : function (data) {
						$('#address1').val(data.results[0].formatted_address),
						$('#address2').val(data.results[1].formatted_address)
					}
				});
				
			}
		});
    }

		function initialize() {

			var latitude = document.getElementById("latitude");
			var longitude = document.getElementById("longitude");

			var Y_point			= latitude.value;		// Y 좌표
			var X_point			= longitude.value;		// X 좌표

			var zoomLevel		= 17;						// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼

			var markerTitle		= "ITWILL";				// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
			var markerMaxWidth	= 300;						// 마커를 클릭했을때 나타나는 말풍선의 최대 크기

			// 말풍선 내용
			var contentString	= '<div>' +
			'<h2>메롱</h2>'+
			'<p>아 정말 귀찮네<br />' +
            '지도는 띄웠어!</p>' +
			'<a href="https://www.itwill.co.kr:47809" target="_blank">https://www.itwill.co.kr:47809</a>'+
			'</div>';

			var myLatlng = new google.maps.LatLng(Y_point, X_point);
			mapOptions = {
								zoom: zoomLevel,
								center: myLatlng,
								mapTypeId: google.maps.MapTypeId.ROADMAP,
								navigationControl: true,
							    navigationControlOptions: {style: google.maps.NavigationControlStyle.ZOOM_PAN}	
			}
			map = new google.maps.Map(document.getElementById('map_view'), mapOptions);

			marker = new google.maps.Marker({
						position: myLatlng,
						map: map,
						icon: myIcon,
						title : markerTitle
					});
			
			var infowindow = new google.maps.InfoWindow(
														{
															content: contentString,
															maxWidth: markerMaxWidth
														}
			);

			google.maps.event.addListener(marker, 'click', function() {
				infowindow.open(map, marker);
			});
				
		}
		
		function line(latlngList){
			var coordinates = latlngList;
			var trackingPath = new google.maps.Polyline({
			                             path: coordinates,
			                             geodesic: true,
			                             strokeColor: '#FF0000',
			                             strokeOpacity: 1.0,
			                             strokeWeight: 2
			                           });
			trackingPath.setMap(map);
		}
		
		function marker_move(latitude, longitude) {
			var disY = 0.00012 * Math.pow(2,(21 - map.getZoom()));
			var disX = 0.00024 * Math.pow(2,(21 - map.getZoom()));
		    if( Math.abs(latitude - map.getCenter().lat()) >= disY || Math.abs(longitude - map.getCenter().lng()) >= disX){
				map.panTo(new google.maps.LatLng(latitude, longitude));
		    }
			marker.setPosition(new google.maps.LatLng(latitude, longitude));
			document.getElementById("latitude").value = latitude;
			document.getElementById("longitude").value = longitude;
		}
		
		function trackingStart(){
			if(tracking == true){
				return;
			}
			timer = setInterval( function () { request(); }, 3000);
			tracking = true;
		}
	
		function trackingStop(){
			clearInterval(timer);
			tracking = false;
		}
	
		function getSerialNumber(){
			$.ajax ({
				url : '/tracker/tracking/getserial.action',
				method : "post",
				async : false,
				success : function (data, result, status, xhr) {
					alert(data);
					if(result == "success"){
						 location.replace('/tracker/#gpstracker');
					}
				}
			});
		}
	
		
		
		