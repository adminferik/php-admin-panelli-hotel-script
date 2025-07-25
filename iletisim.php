<?php include 'header.php'; ?>

<head>
	<title>İletişim</title>	
</head>

<section class="parallax section section-parallax section-center m-none section-overlay-opacity section-overlay-opacity-scale-4" data-plugin-parallax data-plugin-options='{"speed": 1.5}' data-image-src="img/demos/hotel/parallax-hotel.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-12 center">
        <h3 class="mb-xs mt-none text-light text-uppercase">Bize Ulaşın</h3>

      </div>
    </div>
  </div>
</section>

<div role="main" class="main">
	<div class="container">
		<div class="row pt-xl">
			<div class="col-md-7">
				<h1 class="mt-xl mb-none">Bize Ulaşın</h1>
				<div class="divider divider-primary divider-small mb-xl">
					<hr>
				</div>
				<p class="lead mb-xl mt-lg">Bize ulaşmak için aşağıda yer alan iletişim formunu eksiksizce doldurarak gönderebilirsiniz.</p>

				<div class="alert alert-success hidden mt-lg" id="contactSuccess">
					<strong>Success!</strong> Your message has been sent to us.
				</div>

				<div class="alert alert-danger hidden mt-lg" id="contactError">
					<strong>Error!</strong> There was an error sending your message.
					<span class="font-size-xs mt-sm display-block" id="mailErrorMessage"></span>
				</div>

				<form  action="smphp/index.php" method="POST">
					

					<div class="row">
						<div class="form-group">
							<div class="col-md-12">
								<input type="text" placeholder="Ad Soyad..." value="" data-msg-required="Ad Soyad..." maxlength="100" class="form-control input-lg" name="adsoyad" id="name" required>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="form-group">
							<div class="col-md-12">
								<input type="email" placeholder="E-Posta Adresi" value="" data-msg-required="E-Posta Zorunlu..." data-msg-email="E-Posta adresiniz..." maxlength="100" class="form-control input-lg" name="email" id="email" required>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-md-12">
								<input type="text" placeholder="Konu" value="" data-msg-required="Konu Giriniz" maxlength="100" class="form-control input-lg" name="konu" id="subject" required>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-md-12">
								<textarea maxlength="5000" placeholder="Mesaj" data-msg-required="Mesaj Giriniz..." rows="5" class="form-control input-lg" name="mesaj" id="message" required></textarea>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<input type="submit" name="iletisimform" value="Mesajı Gönder" class="btn btn-primary btn-lg mb-xlg" data-loading-text="Loading...">
						</div>
					</div>
				</form>

			</div>
			<div class="col-md-4 col-md-offset-1">

				<h4 class="mt-xl mb-none">Adres & İletişim</h4>
				<div class="divider divider-primary divider-small mb-xl">
					<hr>
				</div>

				<ul class="list list-icons list-icons-style-3 mt-xlg mb-xlg">
					<li><i class="fa fa-map-marker"></i> <strong>Adres:</strong> <?php echo $ayarcek['ayar_adres']; ?><br> <?php echo $ayarcek['ayar_ilce']; ?> / <?php echo $ayarcek['ayar_il']; ?></li>
					<li><i class="fa fa-phone"></i> <strong>Telefon:</strong> <?php echo $ayarcek['ayar_tel']; ?></li>
					<li><i class="fa fa-envelope"></i> <strong>Mail Adresi:</strong> <a href="mailto:<?php echo $ayarcek['ayar_email']; ?>"><?php echo $ayarcek['ayar_mail']; ?></a></li>
				</ul>

				<h4 class="pt-xl mb-none">Çalışma Saatleri</h4>
				<div class="divider divider-primary divider-small mb-xl">
					<hr>
				</div>

				<p><?php echo $ayarcek['ayar_mesai']; ?></p>

			</div>
		</div>
	</div>

	<!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
	<div id="googlemaps" class="google-map google-map-footer">
		<iframe
		width="100%"
		height="100%"
		frameborder="0" style="border:0"
		src="https://www.google.com/maps/embed/v1/place?key=<?php echo $ayarcek['ayar_goooglemap']; ?>
		&q=<?php echo $ayarcek['ayar_adres']; ?>" allowfullscreen>
	</iframe>

</div>
</div>

<?php include 'footer.php'; ?>