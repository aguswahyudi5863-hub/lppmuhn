<div class="row">
    <div class="col-lg-12 col-12 mb-4">
        <h5 class="font-weight-bold mb-3"><i class="far fa-user"></i> Profil Mahasiswa</h5>
        <div class="card">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label>NIM</label>
                        <input type="text" class="form-control" value="<?= $profil->mhs_nim ?>" disabled>
                    </div>

                    <div class="form-group">
                        <label >Nama</label>
                        <input type="text" class="form-control" value="<?= $profil->mhs_nama ?>" disabled>
                    </div>

                    <div class="form-group">
                        <label >Alamat</label>
                        <textarea type="text" class="form-control"  disabled ><?= $profil->mhs_alamat ?></textarea>
                    </div>

                    <div class="form-group">
                        <label >No Hp</label>
                        <input type="text" class="form-control" value="<?= $profil->mhs_nohp ?>">
                    </div>
                    
                    <div class="form-group">
                        <label >Email</label>
                        <input type="text" class="form-control" value="<?= $profil->mhs_email ?>" >
                    </div>

                    <div class="form-group">
                        <label >Prodi</label>
                        <div class="row">
                            <div class="col-2">
                                <input type="text" class="form-control" value="<?= $profil->prodi_kode ?>" disabled >
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" value="<?= $profil->prodi_nama ?>" disabled >
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label >Password</label>
                        <input type="text" class="form-control" >
                    </div>

                    <br>
                    <div class="alert alert-danger" role="alert">
                        <span class="font-weight-bold">PERHATIAN</span> Diisi apabila ingin merubah password
                    </div>

                    <div class="form-group">
                        <label >Password Baru</label>
                        <input type="text" class="form-control" >
                    </div>

                    <div class="form-group">
                        <label >Confirm Password Baru</label>
                        <input type="text" class="form-control" >
                    </div>

                    <button type="submit" class="btn btn-primary">Simpan</button>
                </form>
            </div>
        </div>
    </div>

</div>
 
