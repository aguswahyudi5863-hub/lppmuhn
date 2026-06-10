<div class="container-fluid">


    <h1 class="h3 mb-4 text-gray-800">Detail Pengumuman</h1>
    <a href="<?= base_url('admin/Manage_announcement'); ?>" class="btn btn-sm btn-warning">Kembali</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-blod text-primary"><?= $detailannouncement['judul']; ?> </h6>
        </div>
        <div class="card-body">
            <img width="500" height="500" src="<?= base_url('front_end/assets/img/pengumuman/') . $detailannouncement['gambar']; ?>" class="img-thumbnail" alt="">
            <p><?= $detailannouncement['detail']; ?></p>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->