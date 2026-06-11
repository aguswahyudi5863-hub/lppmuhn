<!-- Begin Page Content -->
<div class="container-fluid">

    <h1 class="h3 mb-4 text-gray-800">Edit Akun Mahasiswa</h1>

    <form method="POST" action="<?= base_url('admin/Manage_Akun_Mhs/edit/') . $editakunmhs['mhs_id'] ?>" enctype="multipart/form-data">
        
        <input type="hidden" name="id" id="id" value="<?= $editakunmhs['mhs_id']; ?>">
        
        <div class="modal-body">
            
            <div class="form-group mb-3">
                <label for="nama" class="font-weight-bold text-dark">Nama Lengkap</label>
                <input type="text" name="nama" class="form-control" id="nama" value="<?= $editakunmhs['mhs_nama']; ?>">
                <?= form_error('nama', ' <span class="text-danger ml-3">', '</span>') ?>
            </div>
            
            <div class="form-group mb-3">
                <label for="nip" class="font-weight-bold text-dark">NIM / NIP</label>
                <input type="text" name="nip" class="form-control" id="nip" value="<?= $editakunmhs['mhs_nim']; ?>">
                <?= form_error('nip', ' <span class="text-danger ml-3">', '</span>') ?>
            </div>

            <div class="form-group row mt-4">
                <div class="col-sm-3 font-weight-bold text-dark"> Berkas Saat Ini </div>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-12 mb-2">
                            <?php if (!empty($editakunmhs['mhs_berkas'])) : ?>
                                <a href="<?= base_url('upload/berkas/') . $editakunmhs['mhs_berkas']; ?>" target="_blank" class="btn btn-sm btn-info">
                                    <i class="fas fa-file-pdf"></i> Lihat Berkas Lama (<?= $editakunmhs['mhs_berkas']; ?>)
                                </a>
                            <?php else : ?>
                                <span class="badge badge-secondary">Belum ada berkas diupload</span>
                            <?php endif; ?>
                        </div>
                        <div class="col-sm-12 mt-2">
                            <label for="foto" class="text-muted"><small>Pilih file baru jika ingin mengganti berkas (Format: PDF/JPG/PNG)</small></label>
                            <div class="custom-file">
                                <input type="file" name="foto" class="form-control" id="foto">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="modal-footer">
            <a href="<?= base_url('admin/Manage_Akun_Mhs'); ?>" class="btn btn-secondary">Kembali</a>
            <button type="submit" class="btn btn-primary">Ubah Data</button>
        </div>
    </form>

</div>
</div>