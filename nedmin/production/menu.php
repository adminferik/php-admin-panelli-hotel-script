<?php 

include 'header.php';

if(isset($_POST['arama'])) {

  $aranan=$_POST['aranan'];

  $menusor=$db->prepare("select * from menu where menu_ad LIKE '%$aranan%' order by menu_id ASC limit 25");
  $menusor->execute();
  $say=$menusor->rowCount();

  
} else {


  $menusor=$db->prepare("select * from menu where menu_ust=:menu_ust order by menu_sira ASC limit 25");
  $menusor->execute(array(
  'menu_ust' => 0
  ));
  $say=$menusor->rowCount();


}
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
              <h2 >Menü İşlemleri <small>
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
                <a href="menu-ekle.php"><button  class="btn btn-danger "><i class="fa fa-plus" aria-hidden="true"></i> Yeni Ekle</button></a>
              </div>
              <div class="clearfix"></div>
            </div>


            <div class="x_content">
              <div class="table-responsive">
                <table class="table table-striped jambo_table bulk_action">
                  <thead>
                    <tr class="headings">

                      <th class="column-title ">Menü Ad </th>
                    
                      <th class="column-title text-center">Menü Sıra </th>
                      <th class="column-title text-center">Menü Durum </th>
                      <th width="80" class="column-title"></th>
                      <th width="80" class="column-title"></th>


                    </tr>
                  </thead>

                  <tbody>

                    <?php 


                    
                    while($menucek=$menusor->fetch(PDO::FETCH_ASSOC)) {

                      $menu_id=$menucek['menu_id'];
                      ?>



                      <tr>

                        <td ><?php echo $menucek['menu_ad']; ?></td>
                       
                        <td class="text-center"><?php echo $menucek['menu_sira']; ?></td>

                        <td class="text-center"><?php 

                          if ($menucek['menu_durum']=="1") {

                           echo "AKTİF";
                         } else {

                          echo "PASİF";
                        }

                        ?></td>
                        
                        <td class="text-center"><a href="menu-duzenle.php?menu_id=<?php echo $menucek['menu_id']; ?>"><button style="width:80px;" class="btn btn-primary btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Düzenle</button></a></td>
                        
                        <td class="text-center"><a href="../netting/islem.php?menusil=ok&menu_id=<?php echo $menucek['menu_id']; ?>"><button style="width:80px;" class="btn btn-danger btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Sil</button></a></td>

                      </tr>

                      <?php 
                      $altmenusor=$db->prepare("select * from menu where menu_ust=:menu_id order by menu_sira");
                      $altmenusor->execute(array(
                        'menu_id' => $menu_id
                        ));
                      
                      while($altmenucek=$altmenusor->fetch(PDO::FETCH_ASSOC)) {
                        ?>

                        <tr>

                          <td ><b>----</b> &nbsp;&nbsp;<?php echo $altmenucek['menu_ad']; ?></td>
                     
                          <td class="text-center"><?php echo $altmenucek['menu_sira']; ?></td>

                          <td class="text-center"><?php 

                            if ($altmenucek['menu_durum']=="1") {

                             echo "AKTİF";

                           } else {

                            echo "PASİF";
                          }

                          ?></td>

                          <td class="text-center"><a href="menu-duzenle.php?menu_id=<?php echo $altmenucek['menu_id']; ?>"><button style="width:80px;" class="btn btn-primary btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Düzenle</button></a></td>

                          <td class="text-center"><a href="../netting/islem.php?menusil=ok&menu_id=<?php echo $altmenucek['menu_id']; ?>"><button style="width:80px;" class="btn btn-danger btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Sil</button></a></td>

                        </tr>



                        <?php } } ?>

                      </tbody>
                    </table>
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
