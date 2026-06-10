<!-- Start Home Area -->
<!-- Start Blog Details Area -->
<div class="blog-details-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="blog-details-wrap text-justify">
                    <!-- Start Portfolio Details Area -->
                    <!-- <section class="about-area-two bio-data ptb-100"> -->
                    <div class="container">
                        <!-- <h4 class="col-sm-3">Pengumuman</h4> -->
                        <?php foreach ($dataannouncement as $announcement) : ?>
                            <div class="row align-items-center">
                                <div class="col-lg-10">
                                    <div class="about-content">
                                        <!-- <span>Vidnext Bio</span> -->
                                        <br>
                                        <a href="<?= base_url('Home/detail_announcement/') . $announcement['slug']; ?>">
                                            <h3><?= $announcement['judul']; ?></h3>
                                        </a>
                                        <br>
                                        <span> <i class="flaticon-calendar"></i>
                                            <?= date('d F Y', $announcement['date']); ?></span>

                                        <p>Video production work with producing video content. It is the analogical of film making, but the images are digitally recorded instead of film stock. There are three levels of video production.</p>
                                        <!-- <br> -->
                                        <!-- <img class="img-thumbnail rounded mx-auto d-block" style=" width: 350px; height: 300px;" src="<?= base_url('front_end/assets/img/pengumuman/') . $announcement['gambar']; ?>" alt="Image"> -->
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <!-- </section> -->
                    <!-- End Portfolio Details Area -->
                </div>
            </div>

            <div class="col-lg-3">
                <div class="blog-details-sidebar-wrap">
                    <div class="faq-accordion">
                        <ul class="accordion">
                            <li>
                                <h3>News</h3>
                            </li>
                            <?php foreach ($datanews as $news) : ?>
                                <li class="accordion-item active">
                                    <a style="color: blue ;" class="accordion-title" href="javascript:void(0)">
                                        <?= $news['judul']; ?>
                                    </a>

                                    <p class="accordion-content show">
                                        <?= substr(strip_tags($news['detail']), 0, 100); ?>
                                        <a href="<?= base_url('Home/detail_news/') . $news['slug']; ?>" class="read-more">
                                            Detail.....
                                        </a>
                                    </p>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <!-- <div class="search-wrap sidebar-widget">
                        <form class="search-form">
                            <input class="form-control" name="search" placeholder="SEARCH" type="text">
                            <button class="search-button" type="submit">
                                <i class="bx bx-search"></i>
                            </button>
                        </form>
                    </div> -->
                    <div class="about-wrap sidebar-widget">
                        <br>
                        <h3>KETUA LPPM</h3>

                        <img src="<?= base_url('front_end/assets/img/') . $leader['foto']; ?>" alt="Image">

                        <p><?= substr(strip_tags($leader['sambutan']), 0, 200); ?></p>
                        <a href="<?= base_url('Home/sambutan/'); ?>" class="read-more">
                            Detail leader.....
                        </a>
                    </div>

                    <!-- <div class="categories-wrap sidebar-widget">
                        <h3>Pengumuman Penting</h3>

                        <ul>
                            <li>
                                <a href="#">Upcoming movies</a>
                            </li>
                            <li>
                                <a href="#">Blockbusters</a>
                            </li>
                            <li>
                                <a href="#">Awarded</a>
                            </li>
                            <li>
                                <a href="#">Festival</a>
                            </li>
                        </ul>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Blog Details Area -->

<!-- End Home Area -->