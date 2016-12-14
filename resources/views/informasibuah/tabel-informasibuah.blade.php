<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Home | Admin</title>

	<!-- core CSS -->
	<link href="/assets/css/bootstrap.min.css" rel="stylesheet" />

	<!-- Animation library for notifications   -->
	<link href="/assets/css/animate.min.css" rel="stylesheet"/>

	<!--  Light Bootstrap Table core CSS    -->
	<link href="/assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


	<!--  CSS for Demo Purpose, don't include it in your project     -->
	<link href="/assets/css/demo.css" rel="stylesheet" />


	<!--     Fonts and icons     -->
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
	<link href="/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
	<link href="/assets/css/datatables.min.css" rel="stylesheet" />
	<link href="/css/font-awesome.min.css" rel="stylesheet">
</head><!--/head-->

<body style="background-color:#f5f5f5;">
	<div class="wrapper">
		<div class="sidebar" data-color="red" data-image="/assets/img/sidebar-4.jpg">
    <!--
        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag
    -->
    <div class="sidebar-wrapper">
    	<div class="logo">
    		<a href="#" class="simple-text">
    			CACAOTALK
    		</a>
    	</div>
    	<ul class="nav">
    		<li class="active">
    			<a href="/informasibuah">
    				<i class="pe-7s-graph"></i>
    				<p>INFORMASI BUAH</p>
    			</a>
    		</li>
    		<li>
    			<a href="/pemesanan">
    				<i class="pe-7s-cart"></i>
    				<p>PEMESANAN</p>
    			</a>
    		</li>
    	</ul>
    </div>
</div>
<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8">
					<div class="card">
						<div class="header">
							<h1>
								LIST BUAH KAKAO
							</h1>
						</div>
						<div class="content">
							<table class="table table-striped" id="table_info_kakao">
								<thead>
									<th>Nama Buah</th>
									<th>Jenis Buah</th>
									<th>Warna Biji</th>
									<th>Berat Biji</th>
									<th>Ketahanan</th>
									<th>Deskripsi</th>
								</thead>
								<tbody>
									<tr>
										@foreach($informasibuahs as $informasibuah)
										<td>{{$informasibuah->nama_buah}}</td>
										<td>{{$informasibuah->jenis_kakao}}</td>
										<td>{{$informasibuah->warna_biji}}</td>
										<td>{{$informasibuah->berat_biji}}</td>
										<td>{{$informasibuah->ketahanan_penyakit}}</td>
										<td>{{$informasibuah->deskripsi}}</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card card-user">
						<div class="image">
							<img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
						</div>
						<div class="content">
							<div class="author">
								<a href="#">
									<img class="avatar border-gray" src="/assets/img/cacao-1.jpg" alt="..."/>
									<h4 class="title">BUAHKAKAO</h4>
								</a>
							</div>
							<table class="table">
								<a href="/informasibuah" class="btn btn-primary" >Data Buah</a>

								<thead>
									<th>nama buah</th>
									<th>jenis buah</th>
								</thead>
								<tbody>
									<tr>
										@foreach($informasibuahs as $informasibuah1)
										<td>{{$informasibuah1->nama_buah}}</td>
										<td>{{$informasibuah1->jenis_kakao}}</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
						<hr>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function htmlbodyHeightUpdate(){
		var height3 = $( window ).height()
		var height1 = $('.nav').height()+50
		height2 = $('.main').height()
		if(height2 > height3){
			$('html').height(Math.max(height1,height3,height2)+10);
			$('body').height(Math.max(height1,height3,height2)+10);
		}
		else
		{
			$('html').height(Math.max(height1,height3,height2));
			$('body').height(Math.max(height1,height3,height2));
		}

	}
	$(document).ready(function () {
		htmlbodyHeightUpdate()
		$( window ).resize(function() {
			htmlbodyHeightUpdate()
		});
		$( window ).scroll(function() {
			height2 = $('.main').height()
			htmlbodyHeightUpdate()
		});
	});
</script>
<script src="/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="/assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="/assets/js/bootstrap-checkbox-radio-switch.js"></script>

<!--  Charts Plugin -->
<script src="/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="/assets/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="/assets/js/demo.js"></script>

<script src="/assets/js/datatables.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#table_info_kakao').DataTable();
	});
</script>

</body>
</html>
