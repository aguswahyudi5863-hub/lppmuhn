<!-- Start Blog Details Area -->
<div class="blog-details-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="blog-details-wrap text-justify">
                    <div class="blog-top-content-wrap">
                        <img src="<?= base_url('front_end/assets/img/pengumuman/') . $dataannouncement['gambar']; ?>" alt="Image">
                        <ul class="post-details">
                            <li>
                                <i class="bx bx-calendar"></i>
                                <?= date('d F Y', $dataannouncement['date']); ?>
                            </li>
                            <li>
                                <i class="bx bx-comment"></i>
                                No Comments
                            </li>
                        </ul>

                        <h3><?= $dataannouncement['judul']; ?></h3>

                        <p><?= $dataannouncement['detail']; ?></p>

                    </div>



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
                                    <h3 class="text-center">Berita</h3>
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
                    </div>



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