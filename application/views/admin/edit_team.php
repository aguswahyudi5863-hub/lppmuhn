<!-- Begin Page Content -->
<div class="container-fluid">


    <h1 class="h3 mb-4 text-gray-800">Edit Team</h1>

    <form method="POST" action="<?= base_url('admin/Manage_team/edit/') . $editteam['id'] ?>" enctype="multipart/form-data">
        <input type="hidden" name="id" id="id" value="<?= $editteam['id']; ?>">
        <div class="modal-body">
            <div class="form-group mb-3">
                <input type="text" name="nama" class="form-control" id="nama" value="<?= $editteam['nama']; ?>">
                <?= form_error('nama', ' <span class="text-danger ml-3">', '</span>') ?>
            </div>
            <div class="form-group mb-3">
                <input type="text" name="nip" class="form-control" id="nip" value="<?= $editteam['nip']; ?>">
                <?= form_error('nip', ' <span class="text-danger ml-3">', '</span>') ?>
            </div>
            <div class="form-group mb-3">
                <input type="text" name="jabatan" class="form-control" id="jabatan" value="<?= $editteam['jabatan']; ?>">
                <?= form_error('jabatan', ' <span class="text-danger ml-3">', '</span>') ?>
            </div>
            <div class="from-group-row">
                <div class="col-sm-2"> Gambar </div>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-sm-3">
                            <img class="img-thumbnail" alt="" src="<?= base_url('front_end/assets/img/team/') . $editteam['foto'] ?>">
                        </div>
                        <div class="col-sm-9">
                            <div class="custom-file">
                                <input type="file" name="foto" class="form-control" id="foto">
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