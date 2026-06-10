<!-- Begin Page Content -->
<div class="container-fluid">


    <h1 class="h3 mb-4 text-gray-800">Hallo, Selamat Datang <?= $tb_akun['name'] ?></h1>
    <div class="card" style="width: 18rem;">
        <img src="<?= base_url('back_end/img/logouhn.png') ?>" class="card-img-top" alt="...">
        <div class="card-body">
            <p class="card-text"><?= $tb_akun['name'] ?></p>
            <p class="card-text"><?= $tb_akun['date_created'] ?></p>
        </div>
    </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->