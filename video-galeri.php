<?php 
include 'header.php'; 

?>

<head>
  <title>Video Galeri</title>  

</head>

<head>
  <title><?php echo $ayarcek['ayar_title']; ?></title>  

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

				<h1 class="mt-xl mb-none">Video Galeri</h1>
				<div class="divider divider-primary divider-small mb-xl">
					<hr>
				</div>

				<div class="row">

					<ul class="portfolio-list lightbox m-none" data-plugin-options='{"delegate": "a.lightbox-portfolio", "type": "image", "gallery": {"enabled": true}}'>

						<?php

                $sayfada =15; // sayfada gösterilecek içerik miktarını belirtiyoruz.


                $sorgu=$db->prepare("select * from video");
                $sorgu->execute();
                $toplam_video=$sorgu->rowCount();

                $toplam_sayfa = ceil($toplam_video / $sayfada);

                  // eğer sayfa girilmemişse 1 varsayalım.
                $sayfa = isset($_GET['sayfa']) ? (int) $_GET['sayfa'] : 1;

			    // eğer 1'den küçük bir sayfa sayısı girildiyse 1 yapalım.
                if($sayfa < 1) $sayfa = 1; 

				// toplam sayfa sayımızdan fazla yazılırsa en son sayfayı varsayalım.
                if($sayfa > $toplam_sayfa) $sayfa = $toplam_sayfa; 

                $limit = ($sayfa - 1) * $sayfada;

                $videosor=$db->prepare("select * from video order by video_id DESC limit $limit,$sayfada");
                $videosor->execute();

                while($videocek=$videosor->fetch(PDO::FETCH_ASSOC)) { ?>


                <!-- Başla -->

                <!-- hidden-xs mobilde div gizleme -->

                  <a href="video-<?=seo($videocek["video_ad"]).'-'.$videocek["video_id"]?>"><li style="padding:7px;" class="col-md-4 col-sm-6 col-xs-12">
                	<div class="portfolio-item">

                		<span class="thumb-info thumb-info-lighten thumb-info-centered-icons">
                			<span class="thumb-info-wrapper">
                       <img style="position: absolute; width: 62px; z-index: 999; margin-top: 50px; margin-left: 100px;" src="dimg/play.png">
                            <img src="<?php echo $videocek['video_resimyol']; ?>" class="img-responsive" alt="<?php echo $videocek['video_ad']; ?>">
                           </span>
                       </span>
                   </div>
               </li> </a>


               <!-- Bitir -->

               <?php } ?>

           </ul>

           <div align="right" class="col-md-12">
             <ul class="pagination">

              <?php

              $s=0;

              while ($s < $toplam_sayfa) {

               $s++; ?>

               <?php 

               if ($s==$sayfa) {?>

               <li class="active">

                <a href="resim-video?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

            </li>

            <?php } else {?>


            <li>

                <a href="resim-video?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

            </li>

            <?php   }

        }

        ?>

    </ul>
</div>


</div>

</div>


<!-- Sidebar -->


<?php include 'rightbar.php'; ?>

</div>

</div>
</div>

<?php include 'footer.php'; ?>
