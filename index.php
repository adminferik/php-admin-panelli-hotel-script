<?php 
include 'header.php'; 
$hakkimizdasor=$db->prepare("select * from hakkimizda where hakkimizda_id=?");
$hakkimizdasor->execute(array(0));
$hakkimizdacek=$hakkimizdasor->fetch(PDO::FETCH_ASSOC);
?>


			<div role="main" class="main">
				<div class="slider-container rev_slider_wrapper" style="height: 650px;">
		<div id="revolutionSlider" class="slider rev_slider manual">
			<ul>


				<?php 

				$slidersor=$db->prepare("select * from slider where slider_durum=? order by slider_id ASC limit 25");
				$slidersor->execute(array(1));

				while($slidercek=$slidersor->fetch(PDO::FETCH_ASSOC)) {
					?>


					<li data-transition="fade" data-title="<?php $ayarcek['ayar_author']; ?>" data-thumb="<?php echo $slidercek['slider_resimyol']; ?>">

						<img src="<?php echo $slidercek['slider_resimyol']; ?>"  
						alt="<?php echo $slidercek['slider_ad']; ?>"
						data-bgposition="center center" 
						data-bgfit="cover" 
						data-bgrepeat="no-repeat"
						class="rev-slidebg">

					</li>

					<?php } ?>



				</ul>
			</div>
		</div>

				<section class="section section-no-background section-no-border m-none">
					<div class="container">
						<div class="row mb-xl">
							<div class="col-md-8">

								<h3 class="mt-xl mb-none pb-none text-uppercase"><?php echo $hakkimizdacek['hakkimizda_baslik']; ?></h3>
								<div class="divider divider-primary divider-small mb-xl mt-none">
									<hr class="mt-sm">
								</div>

								

								<p class="mt-lg"><?php echo substr($hakkimizdacek['hakkimizda_icerik'],0,600); ?></p>

								<a class="btn btn-primary btn-lg font-size-sm text-uppercase mt-sm mb-xlg" href="hakkimizda">Devamı</a>
							</div>
							<div class="col-md-4">

								<div class="micro-map box-shadow-custom clearfix">
									<div class="micro-map-map">
										<div  style="height: 280px;">
												<iframe
		width="100%"
		height="100%"
		frameborder="0" style="border:0"
		src="https://www.google.com/maps/embed/v1/place?key=<?php echo $ayarcek['ayar_goooglemap']; ?>
		&q=<?php echo $ayarcek['ayar_adres']; ?>" allowfullscreen>
	</iframe>
										</div>
									</div>
									<div class="micro-map-info">
										<div class="micro-map-info-detail">
											<i class="icon-location-pin icons text-color-primary"></i>
											<label>Adres</label>
						<strong><?php echo $ayarcek['ayar_adres']; ?> - <?php echo $ayarcek['ayar_ilce']; ?> / <?php echo $ayarcek['ayar_il']; ?></strong>
										</div>
										<div class="micro-map-info-detail">
											<i class="icon-phone icons text-color-primary"></i>
											<label>Telefon</label>
						<strong><?php echo $ayarcek['ayar_tel']; ?></strong>
										</div>
									</div>
								</div>

							</div>
								
						</div>
					</div>
				</section>

				



				<section class="section section-primary section-no-border m-none" data-plugin-parallax data-plugin-options='{"speed": 6}' data-image-src="img/demos/hotel/parallax-hotel-map.png">
					<div class="container">
						<div class="row">
							<div class="col-md-12 center">
								<h3 class="mt-xl mb-none pb-none text-light text-uppercase">Misyon & Vizyon</h3>
								<div class="divider divider-light divider-small divider-small-center mb-xl mt-none">
									<hr class="mt-sm">
								</div>
							</div>
						</div>
						<div class="row">

								<div class="col-md-6">
								<div class="testimonial testimonial-style-3 testimonial-style-custom appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
									<blockquote class="box-shadow-custom">
										<p><?php echo $hakkimizdacek['hakkimizda_vizyon']; ?></p>
									</blockquote>
									<div class="testimonial-arrow-down"></div>
									<div class="testimonial-author">
										<p><strong>Vizyon</strong></p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="testimonial testimonial-style-3 testimonial-style-custom appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
									<blockquote class="box-shadow-custom">
										<p><?php echo $hakkimizdacek['hakkimizda_misyon']; ?></p>
									</blockquote>
									<div class="testimonial-arrow-down"></div>
									<div class="testimonial-author">
										<p><strong>Misyon</strong></p>
									</div>
								</div>
							</div>
						
						</div>
					</div>
				</section>

				<section class="section section-no-background section-no-border m-none">
					<div class="container">
						<div class="row">
							<div class="col-md-12 center">

								<h3 class="mt-xl mb-none pb-none text-uppercase">Haberler & Blog</h3>
								<div class="divider divider-primary divider-small divider-small-center mb-xl mt-none">
									<hr class="mt-sm">
								</div>

								<div class="row mt-xl">



						<?php 

						$iceriksor=$db->prepare("select * from icerik order by icerik_zaman DESC limit 4");
						$iceriksor->execute();

						while($icerikcek=$iceriksor->fetch(PDO::FETCH_ASSOC)) { ?>

						<div class="col-md-6">

							<span class="thumb-info thumb-info-side-image thumb-info-no-zoom mt-xl">
								<span class="thumb-info-side-image-wrapper p-none ">

									<img  src="<?php echo $icerikcek['icerik_resimyol']; ?>" class="img-responsive" alt="" style="width: 250px; height: 150px; padding:10px;">

								</span>
								<span class="thumb-info-caption">
									<span class="thumb-info-caption-text">
										<h2 class="mb-md mt-xs"><?php echo $icerikcek['icerik_ad']; ?></h2>									
										<?php echo substr($icerikcek['icerik_detay'],0,250); ?>...<br><hr>
										<div align="right" class="col-md-12">
											<a class="mt-md" href="<?=seo($icerikcek["icerik_ad"]).'-'.$icerikcek["icerik_id"]?>">Devamını Oku <i class="fa fa-long-arrow-right"></i></a>
										</div>
									</span>
								</span>
							</span>

						</div>


						<?php } ?>


					</div>

								

								<a class="btn btn-primary btn-lg font-size-sm text-uppercase mt-sm" href="haberler.php">Devamı</a>

							</div>
								
						</div>
					</div>
				</section>

				

				<?php include 'footer.php' ?>