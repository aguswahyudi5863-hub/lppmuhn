<!-- Start Team Area -->
<section class="team-page-area bg-color ptb-100">
    <div class="container">
        <div class="section-title">
            <!-- <span> -->
            <h4>Team LPPM</h4>
            <!-- </span> -->

        </div>

        <div class="row">
            <?php foreach ($datateam as $team) : ?>
                <div class="col-lg-4 col-sm-6">
                    <div class="ingle-team">
                        <div class="team-img">
                            <img style="height: 300px;" src="<?= base_url('front_end/assets/img/team/') . $team['foto']; ?>" alt="Image">

                            <ul class="social">
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
                            </ul>
                        </div>

                        <div class="team-content">
                            <p><?= $team['nama'] ?></p>
                            <p><?= $team['nip'] ?></p>
                            <span>
                                <h5><?= $team['jabatan'] ?></h5>
                            </span>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>



            <div class="col-lg-12 col-md-12">
                <div class="pagination-area text-center">
                    <a href="#" class="prev page-numbers">
                        <i class="bx bx-chevron-left"></i>
                    </a>

                    <span class="page-numbers current" aria-current="page">1</span>
                    <a href="#" class="page-numbers">2</a>
                    <a href="#" class="page-numbers">3</a>
                    <a href="#" class="page-numbers">4</a>

                    <a href="#" class="next page-numbers">
                        <i class="bx bx-chevron-right"></i>
                    </a>
                </div>
            </div>
        </div>
</section>
<!-- End Team Area -->