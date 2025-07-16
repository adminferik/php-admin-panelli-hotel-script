<?php 
include 'header.php';

// Sayfa numarası güvenli alınıyor
$sayfa = isset($_GET['sayfa']) && is_numeric($_GET['sayfa']) ? (int)$_GET['sayfa'] : 1;
if ($sayfa < 1) $sayfa = 1;

$sayfada = 10;
$limit = ($sayfa - 1) * $sayfada;
if ($limit < 0) $limit = 0;

// Arama kontrol
$aramaVar = isset($_POST['arama']) && !empty($_POST['aranan']);
$aranan = $aramaVar ? trim($_POST['aranan']) : null;

// Toplam içerik sayısı
if ($aramaVar) {
  $count = $db->prepare("SELECT COUNT(*) FROM referans WHERE referans_ad LIKE :aranan");
  $count->execute([':aranan' => "%$aranan%"]);
  $toplam_icerik = $count->fetchColumn();
} else {
  $toplam_icerik = $db->query("SELECT COUNT(*) FROM referans")->fetchColumn();
}

$toplam_sayfa = ceil($toplam_icerik / $sayfada);

// Veri sorgusu
if ($aramaVar) {
  $referanssor = $db->prepare("SELECT * FROM referans WHERE referans_ad LIKE :aranan ORDER BY referans_id DESC LIMIT :limit, :sayfada");
  $referanssor->bindValue(':aranan', "%$aranan%", PDO::PARAM_STR);
  $referanssor->bindValue(':limit', $limit, PDO::PARAM_INT);
  $referanssor->bindValue(':sayfada', $sayfada, PDO::PARAM_INT);
  $referanssor->execute();
} else {
  $referanssor = $db->prepare("SELECT * FROM referans ORDER BY referans_id DESC LIMIT :limit, :sayfada");
  $referanssor->bindValue(':limit', $limit, PDO::PARAM_INT);
  $referanssor->bindValue(':sayfada', $sayfada, PDO::PARAM_INT);
  $referanssor->execute();
}
?>

<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title"></div>

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
                <h2>Referans İşlemleri <small>
                <?php 
                  if (isset($_GET['durum'])) {
                    echo $_GET['durum'] == 'ok' 
                      ? '<b style="color:green;">Güncelleme başarılı...</b>' 
                      : '<b style="color:red;">Güncelleme yapılamadı...</b>';
                  }
                ?>
                </small></h2>
              </div>
              <div align="right" class="col-md-6">
                <a href="referans-ekle.php"><button class="btn btn-danger"><i class="fa fa-plus" aria-hidden="true"></i> Yeni Ekle</button></a>
              </div>
              <div class="clearfix"></div>
            </div>

            <div class="x_content">
              <div class="table-responsive">
                <table class="table table-striped jambo_table bulk_action">
                  <thead>
                    <tr class="headings">
                      <th width="160">Referans Resim</th>
                      <th>Referans Ad</th>
                      <th class="text-center">Referans Link</th>
                      <th width="80"></th>
                      <th width="80"></th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php while ($referanscek = $referanssor->fetch(PDO::FETCH_ASSOC)) { ?>
                    <tr>
                      <td><img width="200" height="100" src="../../<?= htmlspecialchars($referanscek['referans_resimyol']) ?>"></td>
                      <td><?= htmlspecialchars($referanscek['referans_ad']) ?></td>
                      <td class="text-center"><?= htmlspecialchars($referanscek['referans_link']) ?></td>
                      <td class="text-center">
                        <a href="referans-duzenle.php?referans_id=<?= (int)$referanscek['referans_id'] ?>">
                          <button style="width:80px;" class="btn btn-primary btn-xs">
                            <i class="fa fa-pencil" aria-hidden="true"></i> Düzenle
                          </button>
                        </a>
                      </td>
                      <td class="text-center">
                        <a href="../netting/islem.php?referanssil=ok&referans_id=<?= (int)$referanscek['referans_id'] ?>&referans_resimyol=<?= urlencode($referanscek['referans_resimyol']) ?>">
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
                    <?php for ($s = 1; $s <= $toplam_sayfa; $s++) { ?>
                      <li class="<?= ($s == $sayfa) ? 'active' : '' ?>">
                        <a href="referans.php?sayfa=<?= $s ?>"><?= $s ?></a>
                      </li>
                    <?php } ?>
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

<?php include 'footer.php'; ?>
