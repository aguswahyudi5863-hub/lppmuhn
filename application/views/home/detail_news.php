<!-- Start Blog Details Area -->
<div class="blog-details-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="blog-details-wrap text-justify">
                    <div class="blog-top-content-wrap">
                        <img src="<?= base_url('front_end/assets/img/news/') . $datanews['gambar']; ?>" alt="Image">
                        <ul class="post-details">
                            <li>
                                <i class="bx bx-user"></i>
                                <?= $datanews['created_by']; ?>
                            </li>
                            <li>
                                <i class="bx bx-calendar"></i>
                                <?= date('d F Y', $datanews['date']); ?>
                            </li>
                            <li>
                                <i class="bx bx-comment"></i>
                                No Comments
                            </li>
                        </ul>

                        <h3><?= $datanews['judul']; ?></h3>

                        <p><?= $datanews['detail']; ?></p>

                    </div>

                    <!-- 
                    <div class="post-next-and-prev-wrap">
                        <div class="row">
                            <div class="col-lg-6 col-sm-6">
                                <div class="prev-img">
                                    <a href="#">
                                        <img src="assets/img/blog-details/prev-img.jpg" alt="Image">
                                        <h3>Prev Post</h3>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-6 col-sm-6">
                                <div class="next-img">
                                    <a href="#">
                                        <img src="assets/img/blog-details/next-img.jpg" alt="Image">
                                        <h3>Next Post</h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
            </div>

            <div class="col-lg-3">
                <div class="blog-details-sidebar-wrap">
                    <!-- <div class="search-wrap sidebar-widget">
                        <form class="search-form">
                            <input class="form-control" name="search" placeholder="SEARCH" type="text">
                            <button class="search-button" type="submit">
                                <i class="bx bx-search"></i>
                            </button>
                        </form>
                    </div> -->
                    <div class="categories-wrap sidebar-widget">
                        <div class="faq-accordion">
                            <ul class="accordion">
                                <li>
                                    <h3 class="text-center">Pengumuman</h3>
                                </li>
                                <?php foreach ($dataannouncemet as $anouncement) : ?>
                                    <li class="accordion-item active">
                                        <a style="color: blue ;" class="accordion-title" href="javascript:void(0)">
                                            <?= $anouncement['judul']; ?>
                                        </a>

                                        <p class="accordion-content show">
                                            <?= substr(strip_tags($anouncement['detail']), 0, 100); ?>
                                            <a href="<?= base_url('Home/detail_news/') . $anouncement['slug']; ?>" class="read-more">
                                                Detail.....
                                            </a>
                                        </p>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>

                    <!-- <div class="popular-post-wrap sidebar-widget">
                        <h3>Berita Terkait </h3>

                        <ul>
                            <li>
                                <a href="#">
                                    <img style="height: 300px ;" src="<?= base_url('front_end/') ?>assets/img/blog-details/popular-img-1.jpg" alt="Image">
                                    <h3>Tattoo life</h3>
                                    <span>June 27, 2020</span>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <img src="<?= base_url('front_end/') ?>assets/img/blog-details/popular-img-2.jpg" alt="Image">
                                    <h3>Human faith</h3>
                                    <span>June 26, 2020</span>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <img src="<?= base_url('front_end/') ?>assets/img/blog-details/popular-img-3.jpg" alt="Image">
                                    <h3>Alone journey</h3>
                                    <span>June 26, 2020</span>
                                </a>
                            </li>
                        </ul>
                    </div> -->



                    <div class="about-wrap sidebar-widget">
                        <h3 class="text-center">KETUA LPPM</h3>

                        <img src="<?= base_url('front_end/assets/img/') . $leader['foto']; ?>" alt="Image">

                        <p><?= substr(strip_tags($leader['sambutan']), 0, 200); ?></p>
                        <a href="<?= base_url('Home/sambutan/'); ?>" class="read-more">
                            Detail leader.....
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Blog Details Area -->