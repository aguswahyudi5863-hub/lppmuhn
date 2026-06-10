<!-- Begin Page Content -->
<div class="container-fluid">


    <h1 class="h3 mb-4 text-gray-800">Edit News</h1>

    <form method="POST" action="<?= base_url('admin/Manage_news/edit/') . $editnews['id'] ?>" enctype="multipart/form-data">
        <input type="hidden" name="id" id="id" value="<?= $editnews['id']; ?>">
        <div class="modal-body">
            <div class="form-group mb-3">
                <input type="text" name="judul" class="form-control" id="judul" value="<?= $editnews['judul']; ?>">
                <?= form_error('judul', ' <span class="text-danger ml-3">', '</span>') ?>
            </div>
            <div class="form-group mb-3">
                <input type="text" name="slug" class="form-control" id="slug" value="<?= $editnews['slug']; ?>">
                <?= form_error('slug', ' <span class="text-danger ml-3">', '</span>') ?>
            </div>
            <div class="form-group mb-3">
                <textarea class="form-control" name="detail" id="editor" cols="30" rows="10"><?= $editnews['detail']; ?></textarea>
            </div>
            <div class="form-group mb-3">
                <input type="text" name="created_by" class="form-control" id="created_by" value="<?= $editnews['created_by']; ?>">
                <?= form_error('created', ' <span class="text-danger ml-3">', '</span>') ?>
            </div>
            <div class="from-group-row">
                <div class="col-sm-2"> Gambar </div>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-sm-3">
                            <img class="img-thumbnail" alt="" src="<?= base_url('front_end/assets/img/news/') . $editnews['gambar'] ?>">
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
            <button type="submit" class="btn btn-primary">Ubah</button>
        </div>
    </form>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->