<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- Font Awesome -->
    <link href="<?= base_url('back_end/'); ?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    
    <!-- Jquery -->
    <script src=" <?php echo base_url('back_end/vendor/jquery/jquery.min.js') ?>"></script>

    <!-- Bootstrap core -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="<?php echo base_url('back_end/vendor/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>

    <style>
        .login {
        min-height: 100vh;
        }

        .bg-image {
            background-image: url('<?= base_url('front_end/assets/img/bg.jpg') ?>');
            background-size: cover;
            background-position: center;
        }

        .login-heading {
            font-weight: 300;
        }

        .hover:hover{
            cursor: pointer;
            border: 3px dotted #ff7a59;
            color: #ff7a59;
            background: #fff;
        }
    </style>
</head>
<body>
    <div class="container-fluid ps-md-0">
        <div class="row g-0">

            <div class="col-md-8 col-lg-4">
                <div class="login d-flex align-items-center py-5">
                    <div class="container">
                        <div class="text-center mb-5">
                        <img src="<?php echo base_url('front_end/assets/img/logouhn__.png') ?>"  width="150">
                            <h1 class="font-weight-bold">LPPM </h1>
                            <h2>UHN Sugriwa Denpasar</h2>
                            <?= $this->session->userdata('sess_id'); ?>
                            <br>
                            <span>Selamat datang sistem pendaftaran KKN silahkan pilih menu untuk memulai aplikasi</span>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-12">
                                <div class="card hover mb-3" data-toggle="modal" data-target="#modalDaftar">
                                    <div class="card-body text-center">
                                        <img src="<?php echo base_url('front_end/assets/img/register.png') ?>"  width="150" class="img-fluid">
                                        <h2 class="font-weight-bold">Daftar KKN</h2>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-12">
                                <div class="card hover mb-3" data-toggle="modal" data-target="#modalLogin">
                                    <div class="card-body text-center">
                                        <img src="<?php echo base_url('front_end/assets/img/login.png') ?>"  width="150" class="img-fluid">
                                        <h2 class="font-weight-bold">Login KKN</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="d-none d-md-flex col-md-4 col-lg-8 bg-image"></div>

        </div>
    </div>
 

    <!-- Modal -->
    <div class="modal fade" id="modalDaftar" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog  modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="text-center mb-4">
                        <h2 class="font-weight-bold">PENDAFTARAN KKN</h2>
                        <span>Silahkan isi biodata anda dengan benar</span>
                    </div>
                    <form id="formPendaftaran" method="POST" action="">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="nim" placeholder="NIM">
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="nama" placeholder="Nama">
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="no_hp" placeholder="No Hp">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" type="email" name="email" placeholder="Email">
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <textarea class="form-control" type="text" name="alamat" placeholder="Alamat"></textarea>
                                </div>
                            </div>

                            <div class="col-12 ">
                                <div class="form-group ">
                                    <select class="form-control" name="prodi" id="prodi" style="width:100%;">
                                        <option value="">Pilih Prodi</option>
                                        <?php 
                                            foreach($data_prodi as $prodi) {
                                        ?>
                                            <option value="<?= $prodi->prodi_kode; ?>"><?= $prodi->prodi_nama;?></option>
                                        <?php 
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div> 

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="berkas" class="font-weight-bold small text-muted">Upload Berkas Pendukung (Format: PDF/JPG/PNG)</label>
                                    <input class="form-control-file" type="file" name="berkas" id="berkas">
                                </div>
                            </div>
                                                        
                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" type="password" name="password"  placeholder="Password">
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" type="password" name="password_confirm" placeholder="Confirm Password">
                                </div>
                            </div>

                            <div class="col-12">
                                <button class="btn btn-warning btn-block" type="submit">
                                    Daftar
                                </button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalLogin" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog  modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="text-center mb-4">
                        <h2 class="font-weight-bold">LOGIN KKN</h2>
                        <span>Silahkan masukan nim dan password</span>
                    </div>
                    <form id="formLogin" method="POST" action="">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="login_nim" placeholder="NIM">
                                </div>
                            </div>
                            
                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" type="password" name="login_password"  placeholder="Password">
                                </div>
                            </div>

                            <div class="col-12">
                                <button class="btn btn-warning btn-block" type="submit">
                                    Login
                                </button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Jquery Validate-->
    <script src="<?php echo base_url('back_end/vendor/jquery-validation/dist/jquery.validate.min.js') ?>"></script>

    <!-- Sweet Alert -->
    <link rel="stylesheet" href="<?= base_url('back_end/vendor/sweetalert2/dist/sweetalert2.min.css') ?>">
    <script src="<?php echo base_url('back_end/vendor/sweetalert2/dist/sweetalert2.min.js') ?>"></script>
    
    <script>
        //Panggil SweetAlert2
        function msg(icon,title,text){
            Swal.fire({  
                title: title,
                text: text,
                icon: icon,
            })
        };

        $("#formPendaftaran").validate({
            rules:{
                nim:{
                    required: true
                },
                nama:{
                    required: true
                },
                no_hp:{
                    required: true,
                    number :true
                },
                email:{
                    required: true,
                    email: true
                },
                alamat:{
                    required: true
                },
                prodi:{
                    required: true
                },
                // Tambahkan rule untuk berkas
                berkas: {
                   required: true
                },
                password:{
                    required: true
                },
                password_confirm:{
                    required: true,
                    equalTo:'[name="password"]'
                }
            },
            messages:{
                nim:{
                    required: 'Harap masukan nim'
                },
                nama:{
                    required: 'Harap masukan nama'
                },
                no_hp:{
                    required: 'Harap masukan no hp',
                    number : 'Harap masukan nomor valid'
                },
                email:{
                    required: 'Harap masukan email',
                    email: 'Harap masukan email valid'
                },
                alamat:{
                    required: 'Harap masukan alamat'
                },
                prodi:{
                    required: 'Harap masukan prodi'
                },
                berkas: {
                      required: 'Harap unggah berkas pendaftaran Anda'
                 },
                password:{
                    required: 'Harap masukan password'
                },
                password_confirm:{
                    required: 'Harap masukan konfirmasi password',
                    equalTo:'Password tidak sama'
                }
            },
            errorElement: 'span',
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function (element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            },
            
            submitHandler: function(form) {
             var prodi = $('[name="prodi"]').val();

            if(prodi == ''){
                msg('info','Informasi','Harap pilih prodi');
                return false; // hentikan proses jika prodi kosong
            }

            // Menggunakan FormData agar file/berkas otomatis terbawa
            var formData = new FormData(form);

            $.ajax({
                type : "POST",
                url  : "<?php echo base_url('Kkn/create_akun')?>",
                dataType : "JSON",
                data : formData, // Menggunakan variabel formData
                processData: false, // WAJIB DISET FALSE JIKA KIRIM FILE
                contentType: false, // WAJIB DISET FALSE JIKA KIRIM FILE
                success: function(res){
                    if(res.sts != 'true'){
                        msg('info','Informasi',res.msg);
                    }else{
                        // Reset form pendaftaran secara menyeluruh termasuk input file
                        form.reset(); 

                        Swal.fire({
                            title: 'Informasi',
                            text: res.msg,
                            icon: 'success',
                            confirmButtonColor: '#3085d6',
                            confirmButtonText: 'Ok',
                            allowOutsideClick:false
                        }).then((result) => {
                            $('#modalDaftar').modal('hide');
                        })
                    }
                },
                error: function (request, status, error) {
                    msg('error','Informasi','Terjadi kesalahan');
                }
            });
        }



        });

        $("#formLogin").validate({
            rules:{
                login_nim:{
                    required: true
                },
                login_password:{
                    required: true
                },
            },
            messages:{
                login_nim:{
                    required: 'Harap masukan nim'
                },
                login_password:{
                    required: 'Harap masukan password'
                }
            },
            errorElement: 'span',
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function (element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            },
            submitHandler: function(form) {
                var login_nim = $('[name="login_nim"]').val();
                var login_password = $('[name="login_password"]').val();

                if(prodi == ''){
                    msg('info','Informasi','Harap pilih prodi');
                }
                $.ajax({
                    type : "POST",
                    url  : "<?php echo base_url('Kkn/login')?>",
                    dataType : "JSON",
                    data : {
                        nim:login_nim,
                        password:login_password,
                    },
                    success: function(res){

                        if(res.sts != 'true'){
                            msg('info','Informasi',res.msg);
                        }else{
                            
                            $('[name="login_nim"]').val(""); 
                            $('[name="login_password"]').val("");

                            Swal.fire({
                                title: 'Informasi',
                                text: res.msg,
                                icon: 'success',
                                confirmButtonColor: '#3085d6',
                                confirmButtonText: 'Ok',
                                allowOutsideClick:false
                            }).then((result) => { 
                                window.location.href = "<?= base_url('/Kkn')?>";
                            })
                        }
                

                    },
                    error: function (request, status, error) {
                        msg('error','Informasi','Terjadi kesalahan');
                    }
                });

            }
        });
    </script>

</body>
</html>