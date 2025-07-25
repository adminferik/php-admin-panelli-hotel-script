<?php 

include 'header.php';


?>
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">


    </div>

    <div class="col-md-12">
      <div class="title_right">
        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">

          <form action="" method="POST" >
            <div class="input-group">
              <input type="text" class="form-control" name="aranan" placeholder="Anahtar Kelime Giriniz...">
              <span class="input-group-btn">
                <button class="btn btn-default" type="submit" name="arama">Ara!</button>
              </span>
            </div>
          </form>
        </div>
      </div>
    </div>


    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
             <div align="left" class="col-md-6">
              <h2 >Resim Galeri İşlemleri <small>

    <?php 
    if (isset($_GET['durum'])) { // "durum" parametresinin varlığını kontrol et
        if ($_GET['durum'] == 'ok') { 
            echo '<b style="color:green;">Güncelleme başarılı...</b>';
        } elseif ($_GET['durum'] == 'no') {
            echo '<b style="color:red;">Güncelleme yapılamadı...</b>';
        }
    }
    ?>
</small> </h2>
<ul class="nav navbar-right panel_toolbox">

              </div>
  <form action="../netting/islem.php" method="POST" enctype="multipart/form-data">
    <div align="right" class="col-md-6">
        <button type="submit" name="galerisil" class="btn btn-danger">
            <i class="fa fa-trash" aria-hidden="true"></i> Seçilenleri Sil
        </button>
        <a class="btn btn-success" href="galeri-yukle.php">
            <i class="fa fa-plus" aria-hidden="true"></i> Galeri Yükle
        </a>
    </div>
    <div class="clearfix"></div>
    <div class="x_content">
        <?php
        $sayfada = 25;
        $sorgu = $db->prepare("select * from galeri");
        $sorgu->execute();
        $toplam_galeri = $sorgu->rowCount();
        $toplam_sayfa = ceil($toplam_galeri / $sayfada);

        $sayfa = isset($_GET['sayfa']) ? (int) $_GET['sayfa'] : 1;
        if ($sayfa < 1) $sayfa = 1;
        if ($sayfa > $toplam_sayfa) $sayfa = $toplam_sayfa;

        $limit = ($sayfa - 1) * $sayfada;

        $galerisor = $db->prepare("select * from galeri order by galeri_id DESC limit $limit,$sayfada");
        $galerisor->execute();

        while ($galericek = $galerisor->fetch(PDO::FETCH_ASSOC)) { ?>
            <div class="col-md-55">
                <label>
                    <div class="image view view-first">
                        <img style="width: 100%; display: block;" src="../../<?php echo $galericek['galeri_resimyol']; ?>" alt="image" />
                        <div class="mask">
                            <p><?php echo htmlspecialchars($galericek['galeri_ad']); ?> <?php echo $galericek['galeri_id']; ?></p>
                            <div class="tools tools-bottom"></div>
                        </div>
                    </div>
                    <input type="checkbox" name="galerisec[]" value="<?php echo $galericek['galeri_id']; ?>"> Seç
                </label>
            </div>
        <?php } ?>
        <div align="right" class="col-md-12">
            <ul class="pagination">
                <?php
                $s = 0;
                while ($s < $toplam_sayfa) {
                    $s++;
                    if ($s == $sayfa) { ?>
                        <li class="active">
                            <a href="galeri.php?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>
                        </li>
                    <?php } else { ?>
                        <li>
                            <a href="galeri.php?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>
                        </li>
                    <?php }
                }
                ?>
            </ul>
        </div>
</form>


  
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
</div>
<!-- /page content -->


 
<?php include 'footer.php'; ?>
