<html lang="en">

    <head>
        <meta charset="UTF-8"></meta>
        <title>             
            RSK HMIF | Daftar Surat Keluar
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
                        <li><a href="form.php">Buat Surat</a></li>
                        <li class="active"><a href="list.php">Daftar Surat Keluar</a></li>
                        <li><a href="">Logout</a></li>
                    
                    </ul>
                </div>
                </div>
                </div>
        <div class="container">
            <table id="outbox" data-height="400">
                <thead>
                <tr>
                    <th data-field="no_surat" class="col-md-3">No. Surat</th>
                    <th data-field="isi" class="col-md-4">Isi Surat</th>
                    <th data-field="pj" class="col-md-2">Penanggung Jawab</th>
                    <th data-field="tujuan" class="col-md-2">Tujuan</th>
                </tr>
                </thead>
                <tbody>
                    <?php
                        include 'retrieve_data.php';
                        load_data();
                    ?>
                </tbody>
            </table>
        </div>


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
