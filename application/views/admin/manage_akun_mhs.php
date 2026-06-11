Begin Page Content
<div class="container-fluid">
    <a class="btn mb-3 btn-dark btn-sm" href="" data-toggle="modal" data-target="#tambahakunmhs">Tambah Akun Mahasiswa</a>
    <?= $this->session->flashdata('pesan'); ?>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Akun Mahasiswa</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Nim</th>
                            <th>Berkas</th>
                            <th>Aksi</th>
                        </tr>
                    </thead> 
                    <tbody>
                        <?php $no = 1; ?>
                        <?php foreach ($mhs as $datamhs) : ?>
                            <tr>
                                <td><?php echo $no++; ?></td>
                                <td><?= $datamhs['mhs_nama'] ?></td>
                                <td><?= $datamhs['mhs_nim'] ?></td>
                                <td>
                                    <?php if (!empty($datamhs['mhs_berkas'])) : ?>
                                        <a href="<?= base_url('uploads/berkas/') . $datamhs['mhs_berkas']; ?>" target="_blank" class="btn btn-xs btn-info">
                                            <i class="fas fa-eye"></i> Lihat PDF
                                        </a>
                                        
                                        <a href="<?= base_url('uploads/berkas/') . $datamhs['mhs_berkas']; ?>" download class="btn btn-xs btn-success ml-1">
                                            <i class="fas fa-download"></i> Unduh
                                        </a>
                                    <?php else : ?>
                                        <span class="badge badge-secondary">Tidak ada berkas</span>
                                    <?php endif; ?>
                                </td>
                                <td><a href="<?= base_url('admin/Manage_Akun_Mhs/hapus/') . $datamhs['mhs_id']; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Apakah Yakin Ingin Menghapus Data?');">Hapus</a>
                                    <a href="<?= base_url('admin/Manage_Akun_Mhs/edit/') . $datamhs['mhs_id']; ?>" class="btn btn-sm btn-warning">Edit</a>

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
<div class="modal fade" id="tambahakunmhs" tabindex="-1" role="dialog" aria-labelledby="tambahakunmhs" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Akun Mahasiswa</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="<?= base_url('admin/Manage_Akun_Mhs') ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group mb-3">
                        <input type="text" name="nama" class="form-control" id="nama" placeholder="Nama Lengkap">
                        <?= form_error('nama', ' <span class="text-danger ml-3">', '</span>') ?>
                    </div>
                    <div class="form-group mb-3">
                        <input type="text" name="nip" class="form-control" id="nip" placeholder="NIP.">
                        <?= form_error('nip', ' <span class="text-danger ml-3">', '</span>') ?>
                    </div>
                    <div class="form-group mb-3">
                        <input type="text" name="jabatan" class="form-control" id="jabatan" placeholder="Jabatan di LPPM">
                        <?= form_error('jabatan', ' <span class="text-danger ml-3">', '</span>') ?>
                    </div>
                    <div class="form grup mb-3">
                        <input type="file" name="foto" class="form-control" id="foto" placeholder="Foto">

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