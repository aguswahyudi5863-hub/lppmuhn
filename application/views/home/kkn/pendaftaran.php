<!-- Start Page Title Area -->
<!-- <div class="page-title-area bg-15">
    <div class="container">
        <div class="page-title-content">
            <h2>Log In</h2>
            <ul>
                <li>
                    <a href="index.html">
                        Home
                    </a>
                </li>

                <li class="active">Log In</li>
            </ul>
        </div>
    </div>
</div> -->
<!-- End Page Title Area -->


<!-- Start Sign In Area -->
<div class="blog-details-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="blog-details-sidebar-wrap">

                    <div class="categories-wrap sidebar-widget">
                        <h3>Menu</h3>

                        <ul>
                            <li>
                                <a href="<?php echo base_url('kkn/Kkn/kkn_pendaftaran') ?>">Pendaftaran</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('kkn/Kkn/kkn_reg_klmp') ?>">Regristrasi Kelompok</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('kkn/Kkn/kkn_login') ?>">Login</a>
                            </li>
                        </ul>
                    </div>

                    <div class="about-wrap sidebar-widget">
                        <h3>About</h3>

                        <!-- <img src="<?php echo base_url('front_end/assets/img/blog/kkn/logokkn.jpeg') ?>" alt="Image"> -->

                        <p>KKN II Nusantara Terbatas UHN I Gusti Bagus Sugriwa Denpasar Bertemakan Moderasi Beragama</p>
                    </div>
                </div>
            </div>

            <!-- form pendaftaran peserta -->
            <section class="user-area-style log-in-area ptb-0">
                <div class="container">
                    <div class="contact-form-action mb-0">
                        <div class="section-title">
                            <h2>Pendaftaran Peserta KKN</h2>
                            <p>Silahkan Isi Biodata Dengan Benar</p>
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
                                        <input class="form-control" type="email" name="email" placeholder="Email Address">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" type="text" name="alamat" placeholder="Alamat">
                                    </div>
                                </div>

                                <div class="col-12 ">
                                    <div class="form-group ">
                                        <select class="form-control mb-4" name="prodi" id="prodi" style="width:100%;">
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
                                        <input class="form-control" type="password" name="password"  placeholder="Password">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" type="password" name="password_confirm" placeholder="Confirm Password">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <button class="default-btn two" type="submit">
                                        Register Now
                                    </button>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- End Sign In Area -->

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
            var nim = $('[name="nim"]').val();
            var nama = $('[name="nama"]').val();
            var no_hp = $('[name="no_hp"]').val();
            var email = $('[name="email"]').val();
            var alamat = $('[name="alamat"]').val();
            var prodi = $('[name="prodi"]').val();
            var password = $('[name="password"]').val();

            if(prodi == ''){
                msg('info','Informasi','Harap pilih prodi');
            }
            $.ajax({
                type : "POST",
                url  : "<?php echo base_url('kkn/Kkn/create_akun')?>",
                dataType : "JSON",
                data : {
                    nim:nim,
                    nama:nama,
                    no_hp:no_hp,
                    email:email,
                    alamat:alamat,
                    prodi:prodi,
                    password:password,
                },
                success: function(res){

                    if(res.sts != 'true'){
                        Swal.fire({
                            title: 'Informasi',
                            text: res.msg,
                            icon: 'info',
                            confirmButtonColor: '#3085d6',
                            confirmButtonText: 'Ok',
                            allowOutsideClick:false
                        }).then((result) => {
                            window.location.href = "<?php echo base_url('kkn/Kkn/kkn_pendaftaran') ?>";
                        })

                    }else{
                        
                        $('[name="nim"]').val("");
                        $('[name="nama"]').val("");
                        $('[name="no_hp"]').val("");
                        $('[name="email"]').val("");
                        $('[name="alamat"]').val("");
                        $('[name="prodi"]').val("");
                        $('[name="password"]').val("");
                        $('[name="password_confirm"]').val("");

                        Swal.fire({
                            title: 'Informasi',
                            text: res.msg,
                            icon: 'success',
                            confirmButtonColor: '#3085d6',
                            confirmButtonText: 'Ok',
                            allowOutsideClick:false
                        }).then((result) => {
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