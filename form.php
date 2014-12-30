<?php
include 'generate.php';
?>
<html lang="en">

    <head>
        <meta charset="UTF-8"></meta>
        <title>             
            RSK HMIF | Buat Surat
        </title>
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="stylesheet" href="assets/css/bootstrap.css"></link>
        <link rel="stylesheet" href="assets/css/bootstrap-responsive.css"></link>
        <link rel="stylesheet" href="assets/css/custom.css"></link>
        
        
    </head>
    <body>
        <div class="navbar navbar-fixed-top navbar-inverse">
            <div class="navbar-inner">
                <div class="container">
                    <a href="" class="brand">RSK HMIF</a>
                    
                    <ul class="nav pull-right">
                        <li class="active"><a href="form.php">Buat Surat</a></li>
                        <li><a href="list.php">Daftar Surat Keluar</a></li>
                        <li><a href="">Logout</a></li>
                    
                    </ul>
                </div>
                </div>
                </div>
        <div class="container">

      <form class="form-buatsurat" role="form" method="post" action="generate_nmr.php">
        <h2 class="form-buatsurat-heading">Buat Surat</h2>
        <div class="control-group">
        <label for="pembuat" class="sr-only">Pihak yang mengeluarkan:</label>
        <select name="opsipembuat" id="opsipembuat">
            <option>
                Pihak yang mengeluarkan...
            </option>
            <?php
                opsi_pembuat();
            ?>
        </select>
        </div>
        <div class="control-group">
        <label for="pj" class="sr-only">Penanggung jawab:</label>
        <input type="text" name="pj" id="pj" class="form-control" placeholder="" required>
        </div>
        <div class="control-group">
        <label for="perihal" class="sr-only">Perihal:</label>
        <input type="text" name="perihal" id="perihal" class="form-control" placeholder="" required>
        </div>
        <div class="control-group">
        <label for="tujuan" class="sr-only">Kepada:</label>
        <input type="text" name="tujuan" id="tujuan" class="form-control" placeholder="" required>
        </div>

        <label class="checkbox"><input type="checkbox" name="check" />Data yang dimasukkan sudah benar</label>
        <button class="btn btn-lg btn-primary" type="submit">Generate nomor</button>
      </form>

    </div> <!-- /container -->

       <!-- <section>
        <div class="container"> 
        
            <div class="page-header">
            <h1>Buat Surat</h1>
        </div>
        </section>

            <form class="form-horizontal" >
            <div class="control-group">
                <label class="control-label">Pihak yang mengeluarkan</label>    
                <div class="controls"><input type="select" placeholder="yang mengeluarkan" />
                <div class="btn dropdown-toggle" data-toggle="dropdown"><span class="caret"></span>
                    <ul class="dropdown-menu">
                        <li>dummy1</li>
                        <li>dummy2</li>
                        <li>dummy3</li>
                    </ul>
                
                </div>
                </div>           
            </div>

            <div class="control-group">
                <label class="control-label">Penanggung jawab</label>
                <div class="controls"><input type="text" placeholder="penanggung jawab" /></div>            
            </div>
            
            <div class="control-group">
                <label class="control-label">Perihal</label>
                <div class="controls"><input type="text" placeholder="perihal" /></div>            
            </div>

            <div class="control-group">
                <label class="control-label">Kepada</label>
                <div class="controls"><input type="text" placeholder="kepada" /></div>            
            </div>

            <div class="control-group">
                <div class="controls">    <label class="checkbox">
                        <input type="checkbox" /> Data yang dimasukkan sudah benar
                    </label>             
                    <button type="submit" class="btn">Generate nomor</button>
                </div>
            </div>
        </form>

        </div>-->

        <script src="jquery-1.9.1.js"></script>    
        <script src="bootstrap.js"></script>
    </body>
</html>
