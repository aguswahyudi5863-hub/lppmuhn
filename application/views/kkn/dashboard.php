
<div class="row">
  <div class="col-12 mb-4">
    <div class="card bg-dark text-white p-4">
      <div class="card-body">
        <h1 class="font-weight-bold">Selamat Datang</h1>
        <h2>Di Sistem pemilihan lokasi KKN UHN Sugriwa Denpasar</h2>
      </div>
    </div>
  </div>
  <div class="col-lg-6 col-12 mb-4"> 
    <h5 class="font-weight-bold mb-3"><i class="far fa-user"></i> Profil Mahasiswa</h5>
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-4">
            <img src="<?= base_url('back_end/img/user.jpg')?>" alt="" class="img-fluid">
          </div>

          <div class="col-6">
            <span>Nim</span>
            <p class="font-weight-bold"><?= $profil->mhs_nim ?></p>
            <span>Nama</span>
            <p class="font-weight-bold"><?= $profil->mhs_nama ?></p>
            <span>Jurusan</span>
            <p class="font-weight-bold"><?= $profil->prodi_nama ?></p>
            <span>Lokasi KKN</span>
            <p class="font-weight-bold"><?= $profil->mhs_nim ?></p>
          </div>

        </div>
      </div>
    </div>
  </div>

  <!-- <div class="col-6">
    <h5 class="font-weight-bold mb-3"><i class="far fa-file"></i> Pengumuman</h5>
      <div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active">
          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">List group item heading</h5>
            <small>3 days ago</small>
          </div>
          <p class="mb-1">Some placeholder content in a paragraph.</p>
          <small>And some small print.</small>
        </a>
        <a href="#" class="list-group-item list-group-item-action">
          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">List group item heading</h5>
            <small class="text-muted">3 days ago</small>
          </div>
          <p class="mb-1">Some placeholder content in a paragraph.</p>
          <small class="text-muted">And some muted small print.</small>
        </a>
        <a href="#" class="list-group-item list-group-item-action">
          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">List group item heading</h5>
            <small class="text-muted">3 days ago</small>
          </div>
          <p class="mb-1">Some placeholder content in a paragraph.</p>
          <small class="text-muted">And some muted small print.</small>
        </a>
      </div>
  </div> -->
</div>
 
