<?php 
include 'header.php';
include '../netting/baglan.php';
$hakkimizdasor=$db->prepare("select * from hakkimizda where hakkimizda_id=?");
$hakkimizdasor->execute(array(0));
$hakkimizdacek=$hakkimizdasor->fetch(PDO::FETCH_ASSOC);

?>

<head>
  <script src="//cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
</head>
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Hakkımızda</h3>
      </div>

    <!--  <div class="title_right">
        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Anahtar Kelimeniz...">
            <span class="input-group-btn">
              <button class="btn btn-default" type="button">Ara!</button>
            </span>
          </div>
        </div>
      </div>-->
    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
              <h2>Hakkımızda Sayfası Düzenleme <small>
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





                </ul>
                <div class="clearfix"></div>
              </div>

              <div class="x_content">

                <form action="../netting/islem.php" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Başlık<span class="required">*</span>
                    </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                      <input type="text" id="first-name" required="required" name="hakkimizda_baslik" value="<?php echo $hakkimizdacek['hakkimizda_baslik']; ?>" class="form-control col-md-7 col-xs-12">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">İçerik <span class="required">*</span>
                    </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">

                      <textarea  class="ckeditor" id="editor1" name="hakkimizda_icerik"><?php echo $hakkimizdacek['hakkimizda_icerik']; ?></textarea>

                    </div>
                  </div>

                  <script type="text/javascript">


                   CKEDITOR.replace( 'editor1',
                   {
                    filebrowserBrowseUrl : 'ckfinder/ckfinder.html',
                    filebrowserImageBrowseUrl : 'ckfinder/ckfinder.html?type=Images',
                    filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?type=Flash',
                    filebrowserUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
                    filebrowserImageUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                    filebrowserFlashUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
                    forcePasteAsPlainText: true
                  } 
                  );
                </script>

                <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Video<span class="required">*</span>
                  </label>
                  <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" id="first-name" required="required" name="hakkimizda_video" value="<?php echo $hakkimizdacek['hakkimizda_video']; ?>" class="form-control col-md-7 col-xs-12">
                  </div>
                </div>



                <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Vizyon <span class="required">*</span>
                  </label>
                  <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" id="first-name" required="required" name="hakkimizda_vizyon" value="<?php echo $hakkimizdacek['hakkimizda_vizyon']; ?>" class="form-control col-md-7 col-xs-12">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Misyon <span class="required">*</span>
                  </label>
                  <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" id="first-name" required="required" name="hakkimizda_misyon" value="<?php echo $hakkimizdacek['hakkimizda_misyon']; ?>" class="form-control col-md-7 col-xs-12">
                  </div>
                </div>

                <div align="right" class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                  <button type="submit" name="hakkimizdakaydet" class="btn btn-primary">Güncelle</button>
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
