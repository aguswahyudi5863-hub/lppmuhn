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
                                <a href="<?php echo base_url('kkn/Auth/kkn_reg_klmp') ?>">Regristrasi Kelompok</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('kkn/Auth/kkn_login') ?>">Login</a>
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

            <!-- form login peserta -->
            <section class="user-area-style log-in-area ptb-50">
                <div class="container">
                    <div class="contact-form-action mb-0">
                        <div class="section-title">

                            <!-- alert berhasil regristrasi -->
                            <?php echo $this->session->flashdata('pesan'); ?>

                            <h2>Peserta KKN</h2>
                            <p>Silahkan Login</p>
                        </div>
                        <form method="post" action="<?php echo base_url("kkn/Auth/kkn_login") ?>">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" type="text" name="username" placeholder="Username">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" type="text" name="password" placeholder="Password">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="default-btn two" type="submit">
                                        Login
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