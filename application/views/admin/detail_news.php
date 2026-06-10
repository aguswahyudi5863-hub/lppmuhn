<!-- Begin Page Content -->
<div class="container-fluid">


    <h1 class="h3 mb-4 text-gray-800">Detail News</h1>
    <a href="<?= base_url('admin/Manage_news'); ?>" class="btn btn-sm btn-warning">Kembali</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-blod text-primary"><?= $detailnews['judul']; ?> </h6>
        </div>
        <div class="card-body">
            <img src="<?= base_url('front_end/assets/img/news/') . $detailnews['gambar']; ?>" class="img-thumbnail" alt="">
            <p><?= $detailnews['detail']; ?></p>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->