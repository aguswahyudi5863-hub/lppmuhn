<!-- Begin Page Content -->
<div class="container-fluid">


    <a class="btn mb-3 btn-dark btn-sm" href="" data-toggle="modal" data-target="#tambahberita">New News</a>
    <?= $this->session->flashdata('pesan'); ?>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables News</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Slug</th>
                            <!-- <th>Detail</th> -->
                            <th>Created</th>
                            <th>Date</th>
                            <th>Gambar</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1; ?>
                        <?php foreach ($news as $datanews) : ?>
                            <tr>
                                <td><?php echo $no++; ?></td>
                                <td><?= $datanews['judul'] ?></td>
                                <td><?= $datanews['slug'] ?></td>
                                <!-- <td><?= substr(strip_tags($datanews['detail']), 0, 50); ?></td> -->
                                <td><?= $datanews['created_by'] ?></td>
                                <td><?= date('d F Y', $datanews['date']); ?></td>
                                <td><img width="50" class="img-thumbnail" src="<?= base_url('front_end/assets/img/news/') . $datanews['gambar'] ?>"></td>
                                <td><a href="<?= base_url('admin/Manage_news/hapus/') . $datanews['id']; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Apakah Yakin Ingin Menghapus Data?');">Hapus</a>
                                    <a href="<?= base_url('admin/Manage_news/edit/') . $datanews['id']; ?>" class="btn btn-sm btn-warning">Edit</a>
                                    <a href="<?= base_url('admin/Manage_news/detail_news/') . $datanews['id']; ?>" class="btn btn-sm btn-info">Detail</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>




</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Tambah Berita Modal-->
<div class="modal fade" id="tambahberita" tabindex="-1" role="dialog" aria-labelledby="tambahberitaLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Berita</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="<?= base_url('admin/Manage_news') ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group mb-3">
                        <input type="text" name="created" class="form-control" id="created" placeholder="Pembuat berita">
                        <?= form_error('created', ' <span class="text-danger ml-3">', '</span>') ?>
                    </div>
                    <div class="form-group mb-3">
                        <input type="text" name="slug" class="form-control" id="slug" placeholder="Slug">
                        <?= form_error('slug', ' <span class="text-danger ml-3">', '</span>') ?>
                    </div>
                    <div class="form-group mb-3">
                        <input type="text" name="judul" class="form-control" id="judul" placeholder="judul">
                        <?= form_error('judul', ' <span class="text-danger ml-3">', '</span>') ?>
                    </div>
                    <div class="form-group mb-3">
                        <textarea class="form-control" name="detail" id="editor" cols="30" rows="10" placeholder="detail news"></textarea>
                    </div>
                    <div class="form grup mb-3">
                        <input type="file" name="gambar" class="form-control" id="gambar" placeholder="gambar">

                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Tambah</button>
                </div>
        </div>
        </form>
    </div>
</div>