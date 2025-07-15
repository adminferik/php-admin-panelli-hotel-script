<?php 
include 'header.php'; 


$iceriksor=$db->prepare("SELECT * from icerik where icerik_id=:icerik_id");
$iceriksor->execute(array(
	'icerik_id' => $_GET['icerik_id']
	));

$icerikcek=$iceriksor->fetch(PDO::FETCH_ASSOC);

?>

<head>
	<title><?php echo $icerikcek['icerik_ad']; ?></title>	

</head>
<section class="parallax section section-parallax section-center m-none section-overlay-opacity section-overlay-opacity-scale-4" data-plugin-parallax data-plugin-options='{"speed": 1.5}' data-image-src="img/demos/hotel/parallax-hotel.jpg">
	<div class="container">
		<div class="row">
			<div class="col-md-12 center">
				<h3 class="mb-xs mt-none text-light text-uppercase">Haberler</h3>

			</div>
		</div>
	</div>
</section>


<div role="main" class="main">
	<div class="container">
		<div class="row pt-xl">

			<div class="col-md-9">

				<h1 class="mt-xl mb-none"><?php echo $icerikcek['icerik_ad']; ?></h1>
				<div class="divider divider-primary divider-small mb-xl">
					<hr>
				</div>

				<div class="row">



					<!-- Başla -->

					<!-- hidden-xs mobilde div gizleme -->

					<div class="col-md-12">

						<span class="thumb-info thumb-info-side-image thumb-info-no-zoom mt-xl">

							<div class="col-md-12">

									<!--<span class="post-meta">
										<span>January 10, 2016 | <a href="#">John Doe</a></span>
									</span>-->
									<p style="font-size:16px !important;" > <img  src="<?php echo $icerikcek['icerik_resimyol']; ?>" class="img-responsive" alt="" style="float:left;width: 395px; height: 250px; padding:10px; margin-top:16px;"><?php echo $icerikcek['icerik_detay']; ?></p>
									<hr>
									<p style="font-size:15px;"><b>Anahtar Kelimeler : </b>

										<?php 

										$etiketler=explode(', ',$icerikcek['icerik_keyword']); 



										foreach ($etiketler as $etiketbas) {?>

								
										<a href="arama?aranan=<?php echo $etiketbas; ?>"><button class="btn btn-primary btn-xs"><?php echo $etiketbas; ?></button></a>							

										<?php }			
										?>



									</p>
									
								</div>

							</span>

						</div>

						<!-- Bitir -->



					</div>

				</div>


				<!-- Sidebar -->

				<?php include 'rightbar.php'; ?>
			</div>

		</div>
	</div>

	<?php include 'footer.php'; ?>
