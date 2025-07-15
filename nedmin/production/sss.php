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

          <form action="" method="POST">
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
              <h2 >S.S.S İşlemleri <small>
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
              <div align="right" class="col-md-6">
                <a href="sss-ekle.php"><button  class="btn btn-danger "><i class="fa fa-plus" aria-hidden="true"></i> Yeni Ekle</button></a>
              </div>
              <div class="clearfix"></div>
            </div>


            <div class="x_content">
              <div class="table-responsive">
<table class="table table-striped jambo_table bulk_action">
    <thead>
        <tr class="headings">
            <th width="700" class="column-title">Sık Sorulan Başlık</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <?php
        $sayfada = 25; // Sayfada gösterilecek içerik miktarı
        $sorgu = $db->prepare("SELECT * FROM sss");
        $sorgu->execute();
        $toplam_sss = $sorgu->rowCount();
        $toplam_sayfa = ceil($toplam_sss / $sayfada);
        $sayfa = isset($_GET['sayfa']) ? (int)$_GET['sayfa'] : 1;

        // Sayfa kontrolü
        if ($sayfa < 1) $sayfa = 1;
        if ($sayfa > $toplam_sayfa) $sayfa = $toplam_sayfa;

        $limit = ($sayfa - 1) * $sayfada;

        // Arama durumu
        if (isset($_POST['arama'])) {
            $aranan = $_POST['aranan'];
            $ssssor = $db->prepare("SELECT * FROM sss WHERE sss_ad LIKE ? ORDER BY sss_id ASC LIMIT $limit, $sayfada");
            $ssssor->execute(["%$aranan%"]);
        } else {
            $ssssor = $db->prepare("SELECT * FROM sss ORDER BY sss_id DESC LIMIT $limit, $sayfada");
            $ssssor->execute();
        }

        // Verileri listeleme
        while ($ssscek = $ssssor->fetch(PDO::FETCH_ASSOC)) {
            // Boş verileri kontrol ediyoruz
            $sss_ad = htmlspecialchars($ssscek['sss_ad'] ?? 'Başlık Yok');
            $sss_id = htmlspecialchars($ssscek['sss_id']);
            $sss_resimyol = htmlspecialchars($ssscek['sss_resimyol'] ?? '');
        ?>
            <tr>
                <td><?php echo $sss_ad; ?></td>
                <td width="20" class="text-center">
                    <a href="sss-duzenle.php?sss_id=<?php echo $sss_id; ?>">
                        <button style="width:80px;" class="btn btn-primary btn-xs">
                            <i class="fa fa-pencil" aria-hidden="true"></i> Düzenle
                        </button>
                    </a>
                </td>
                <td width="20" class="text-center">
                    <a href="../netting/islem.php?ssssil=ok&sss_id=<?php echo $sss_id; ?>&sss_resimyol=<?php echo $sss_resimyol; ?>">
                        <button style="width:80px;" class="btn btn-danger btn-xs">
                            <i class="fa fa-trash" aria-hidden="true"></i> Sil
                        </button>
                    </a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>


                 <div align="right" class="col-md-12">
            <ul class="pagination">

              <?php

              $s=0;

              while ($s < $toplam_sayfa) {

                $s++; ?>

                <?php 

                if ($s==$sayfa) {?>

                <li class="active">

                  <a href="sss.php?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

                </li>

                <?php } else {?>


                <li>

                  <a href="sss.php?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

                </li>
                
                <?php   }

              }

              ?>

            </ul>
          </div>
              </div>

            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
<!-- /page content -->



<?php include 'footer.php'; ?>
