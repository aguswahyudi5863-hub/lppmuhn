<!-- Sidebar Modal -->
<div class="sidebar-modal">
    <div class="sidebar-modal-inner">
        <div class="sidebar-header">
            <div class="sidebar-logo">
                <img src="<?php echo base_url('front_end/assets/img/logouhn5.png') ?>" alt="Image">
                <h8>LPPM UHN I GB SUGRIWA</h8>
            </div>

            <span class="close-btn sidebar-modal-close-btn">
                <i class="bx bx-x"></i>
            </span>
        </div>

        <div class="sidebar-about">
            <div class="title">
                <p>VidNext is a high quality video production house. We make a awesome branded videos. It is the analogical of film making, but the images are digitally recorded instead of film stock.</p>
            </div>
        </div>

        <div class="contact-us">
            <h2>Contact Us</h2>

            <ul>
                <li>
                    <i class="flaticon-pin"></i>
                    6890 Blvd, The Bronx, NY 1058 New York, USA
                </li>

                <li>
                    <i class="flaticon-email-1"></i>
                    <a href="mailto:hello@vidnext.com">hello@vidnext.com</a>
                    <a href="#">Skype: example</a>
                </li>

                <li>
                    <i class="flaticon-phone-call"></i>
                    <a href="tel:+1-587-785-4578">+1 587 785 4578</a>
                    <a href="tel:+1-485-456-0102">+1 485 456 0102</a>
                </li>
            </ul>
        </div>

        <div class="sidebar-instagram-feed">
            <h2>Instagram</h2>

            <ul>
                <li>
                    <a href="#">
                        <img src="<?php echo base_url('front_end/assets/img/instagram/1.jpg') ?>" alt="image">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<?php echo base_url('front_end/assets/img/instagram/2.jpg') ?>" alt="image">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<?php echo base_url('front_end/assets/img/instagram/3.jpg') ?>" alt="image">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<?php echo base_url('front_end/assets/img/instagram/4.jpg') ?>" alt="image">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<?php echo base_url('front_end/assets/img/instagram/5.jpg') ?>" alt="image">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<?php echo base_url('front_end/assets/img/instagram/6.jpg') ?>" alt="image">
                    </a>
                </li>
            </ul>
        </div>

        <div class="sidebar-follow-us">
            <h2>Sidebar Follow</h2>

            <ul class="social-wrap">
                <li>
                    <a href="#" target="_blank">
                        <i class="bx bxl-twitter"></i>
                    </a>
                </li>
                <li>
                    <a href="#" target="_blank">
                        <i class="bx bxl-instagram"></i>
                    </a>
                </li>
                <li>
                    <a href="#" target="_blank">
                        <i class="bx bxl-facebook"></i>
                    </a>
                </li>
                <li>
                    <a href="#" target="_blank">
                        <i class="bx bxl-youtube"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- End Sidebar Modal -->


<!-- Start About Area -->
<section class="about-area ptb-100">
    <div class="container">

        <div class="row">
            <div class="col-lg-8 text-justify">
                <div class="about-content">
                    <!-- <span>Vidnext Bio</span> -->
                    <h15><?= $leader['sambutan']; ?></h15>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="about-img">
                    <img src="<?php echo base_url('front_end/assets/img/') . $leader['foto'] ?>" alt="Image">
                    <p>
                    <h4><?= $leader['nama']; ?></h4>
                    </p>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- End About Area -->