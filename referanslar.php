<?php 
include 'header.php'; 

?>

<head>
    <title>Referanslar</title>    

</head>


<section class="parallax section section-parallax section-center m-none section-overlay-opacity section-overlay-opacity-scale-4" data-plugin-parallax data-plugin-options='{"speed": 1.5}' data-image-src="img/demos/hotel/parallax-hotel.jpg">
    <div class="container">
        <div class="row">
            <div class="col-md-12 center">
                <h3 class="mb-xs mt-none text-light text-uppercase">Referanslar</h3>

            </div>
        </div>
    </div>
</section>

<div role="main" class="main">
	<div class="container">
		<div class="row pt-xl">

			<div class="col-md-9">

				<h1 class="mt-xl mb-none">Referanslar</h1>
				<div class="divider divider-primary divider-small mb-xl">
					<hr>
				</div>

				<div class="row">

					<?php

                $sayfada = 24; // sayfada gösterilecek içerik miktarını belirtiyoruz.


                $sorgu=$db->prepare("select * from referans");
                $sorgu->execute();
                $toplam_referans=$sorgu->rowCount();

                $toplam_sayfa = ceil($toplam_referans / $sayfada);

                  // eğer sayfa girilmemişse 1 varsayalım.
                $sayfa = isset($_GET['sayfa']) ? (int) $_GET['sayfa'] : 1;

			    // eğer 1'den küçük bir sayfa sayısı girildiyse 1 yapalım.
                if($sayfa < 1) $sayfa = 1; 

				// toplam sayfa sayımızdan fazla yazılırsa en son sayfayı varsayalım.
                if($sayfa > $toplam_sayfa) $sayfa = $toplam_sayfa; 

                $limit = ($sayfa - 1) * $sayfada;

                $referanssor=$db->prepare("select * from referans order by referans_id DESC limit $limit,$sayfada");
                $referanssor->execute();

                while($referanscek=$referanssor->fetch(PDO::FETCH_ASSOC)) { ?>


                <!-- Başla -->

                <!-- hidden-xs mobilde div gizleme -->

                <div class="col-md-4 ">

                	<img src="<?php echo $referanscek['referans_resimyol']; ?>" class="img-responsive" alt="" >

                	<p ><?php echo $referanscek['referans_ad']; ?></p>

                </div>

                <!-- Bitir -->

                <?php } ?>

                <div align="right" class="col-md-12">
                	<ul class="pagination">

                		<?php

                		$s=0;

                		while ($s < $toplam_sayfa) {

                			$s++; ?>

                			<?php 

                			if ($s==$sayfa) {?>

                			<li class="active">

                				<a href="referanslar?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

                			</li>

                			<?php } else {?>


                			<li>

                				<a href="referanslar?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

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
