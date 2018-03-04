<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script type="text/javascript">
		function requestRest() {
			let weatherURL = "https://api2.sktelecom.com/weather/current/minutely";
			let param = [
					"version":"1",
					"city":"서울",
					"country":"강남구",
					"village":"도곡동"
			]
			let param2 = [
					"version":"1",
					"lat":"37.5714000000",
					"lon":"126.9658000000"
			]
			
			Alamofire.request(.GET, weatherURL, parameters:param, encoding:.URL, headers:["appKey":"c7316989-da2d-4972-a3a5-130983771eab"]).responseJSON(completionHandler: {
				response in
				
				switch response.result {
				case .Success(let JSON):
					print("Success with JSON: \(JSON)")
				case .Failure(let error):
					print("Request failed with error: \(error)")
				}
			})
		}
	</script>
	<script type="text/javascript">
	Success with JSON: {
		"weather": {
		    "minutely": [
		      {
		        "station": {
		          "longitude": "127.0657778000",
		          "latitude": "37.1373888900",
		          "name": "남촌",
		          "id": "446",
		          "type": "KMA"
		        },
		        "wind": {
		          "wdir": "287.00",
		          "wspd": "2.80"
		        },
		        "precipitation": {
		          "sinceOntime": "0.00",
		          "type": "0"
		        },
		        "sky": {
		          "code": "SKY_A01",
		          "name": "맑음"
		        },
		        "rain": {
		          "sinceOntime": "0.00",
		          "sinceMidnight": "0.00",
		          "last10min": "0.00",
		          "last15min": "0.00",
		          "last30min": "0.00",
		          "last1hour": "0.00",
		          "last6hour": "0.00",
		          "last12hour": "0.00",
		          "last24hour": "0.00"
		        },
		        "temperature": {
		          "tc": "22.10",
		          "tmax": "24.00",
		          "tmin": "14.00"
		        },
		        "humidity": "",
		        "pressure": {
		          "surface": "",
		          "seaLevel": ""
		        },
		        "lightning": "0",
		        "timeObservation": "2017-05-25 16:53:00"
		      }
		    ]
		  },
		  "common": {
		    "alertYn": "Y",
		    "stormYn": "N"
		  },
		  "result": {
		    "code": 9200,
		    "requestUrl": "/weather/current/minutely?version=2&lat=37.123&lon=127.123",
		    "message": "성공"
		  }
		/* common = {
				alertYn = Y;
				stormYn = N;
		};
		result = {
				code = 9200;
				message = "\Uc131\Uacf5";
				requestUrl = "/weather/current"
		} */
	}
	</script>
	</head>
<body>

</body>
</html>