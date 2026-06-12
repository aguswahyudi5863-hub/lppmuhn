<div class="row">
    <div class="col-lg-12 col-12 mb-4">

        <?php 
            //Setup Lokasi
        ?>


        <?php
            if($profil->kkn_kode == ''){
        ?>
        
        <div class="card mb-3">
            <div class="card-body text-center">
                <i class="fas fa-exclamation-triangle" style="font-size:50px; color:red;"></i>
                <h2>Anda belum memilih lokasi KKN </h2>
                <span>Silahkan pilih dahulu lokasi KKN melalui menu pilih lokasi</span>
                <br>
                <a class="btn btn-primary mt-3" href="<?= base_url('Kkn/pilih_lokasi') ?>">Pilih Lokasi</a>
            </div>
        </div>

        <?php
            }else{
        ?>
        <h5 class="font-weight-bold mb-3"><i class="far fa-user"></i> Lokasi KKN Anda</h5>
        
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-1 col-2 text-center">
                        <i class="fa fa-map-marker-alt" style="font-size:50px; color:red;"></i>
                    </div>

                    <div class="col-lg-8 col">
                        <span>Kabupaten / Kecamatan</span>
                        <h5 class="font-weight-bold"><?= $profil->kkn_kabupaten  ?> / <?= $profil->kkn_kecamatan  ?></h5>
                        <span>Desa</span>
                        <h2 class="font-weight-bold"><?= $profil->kkn_desa  ?></h2>
                    </div>

                    <div class="col-lg-2 col-12">
                        <div class="card" style="border:2px solid red">
                            <div class="card-body text-center">
                                <span>Total Anggota</span>
                                <h1 class="font-weight-bold"><?= $jumlah_mhs ?></h1>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-body">
                <p class="font-weight-bold mb-3"><i class="fas fa-users"></i> Daftar Anggota</p>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Nim</th>
                            <th>Nama</th>
                            <th>Jurusan</th>
                            <th>No Hp</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php 
                            foreach ($daftar_mhs as $mhs) {
                        ?>
                        <tr>
                            <td><?= $mhs->mhs_nim?></td>
                            <td><?= $mhs->mhs_nama?></td>
                            <td><?= $mhs->prodi_nama?></td>
                            <td><?= $mhs->mhs_nohp?></td>
                        </tr>
                        <?php
                            }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>

        <?php

            }
        ?>
        
        
    </div>

</div>
 
