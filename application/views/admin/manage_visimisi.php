<!-- Begin Page Content -->
<div class="container-fluid">


    <h1 class="h3 mb-4 text-gray-800">Dashboard</h1>

    <?= $this->session->flashdata('pesan'); ?>

    <a class="btn mb-3 btn-dark btn-sm" href="" data-toggle="modal" data-target="#edit_visimisi">Edit Visi Misi</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-blod text-primary">Visi Misi LPPM </h6>
        </div>
        <div class="card-body">
            <img style="display:block; margin:auto;" width="500" src="<?= base_url('front_end/assets/img/') . $visimisi['gambar']; ?>" class="img-thumbnail" alt="">
            <p>
                <?= $visimisi['visimisi']; ?>
            </p>
        </div>
    </div>




</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Tambah Berita Modal-->
<div class="modal fade" id="edit_visimisi" tabindex="-1" role="dialog" aria-labelledby="editVisimisi" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Leader</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="<?= base_url('admin/Manage_visimisi/edit/'); ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group mb-3">
                        <textarea class="form-control" name="visimisi" id="editor" cols="30" rows="10"><?= $visimisi['visimisi']; ?></textarea>
                        <?= form_error('visimisi', ' <span class="text-danger ml-3">', '</span>') ?>
                    </div>
                    <div class="from-group-row">
                        <div class="col-sm-2"> Foto</div>
                        <div class="col-sm-10">
                            <div class="row">
                                <div class="col-sm-3">
                                    <img class="img-thumbnail" alt="" src="<?= base_url('front_end/assets/img/') . $visimisi['gambar'] ?>">
                                </div>
                                <div class="col-sm-9">
                                    <div class="custom-file">
                                        <input type="file" name="gambar" class="form-control" id="gambar">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Ubah</button>
                </div>
        </div>
        </form>
    </div>
</div>