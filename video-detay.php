<?php 
include 'header.php'; 


$videosor=$db->prepare("SELECT * from video where video_id=:video_id");
$videosor->execute(array(
	'video_id' => $_GET['video_id']
	));

$videocek=$videosor->fetch(PDO::FETCH_ASSOC);

?>

<head>
	<title><?php echo $videocek['video_ad']; ?></title>	

</head>
<section class="parallax section section-parallax section-center m-none section-overlay-opacity section-overlay-opacity-scale-4" data-plugin-parallax data-plugin-options='{"speed": 1.5}' data-image-src="img/demos/hotel/parallax-hotel.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-12 center">
        <h3 class="mb-xs mt-none text-light text-uppercase">Video Galeri</h3>

      </div>
    </div>
  </div>
</section>

<div role="main" class="main">
	<div class="container">
		<div class="row pt-xl">

			<div class="col-md-9">

				<h1 class="mt-xl mb-none"><?php echo $videocek['video_ad']; ?> </h1>
				<div class="divider divider-primary divider-small mb-xl">
					<hr>
				</div>

				<div class="row">

					<div class="col-md-11">

						<iframe width="800" height="430" src="https://www.youtube.com/embed/<?php echo $videocek['video_code']; ?>?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>

					</div>


				</div>

			</div>


			<!-- Sidebar -->

			<?php include 'rightbar.php'; ?>
		</div>

	</div>
</div>

<?php include 'footer.php'; ?>
