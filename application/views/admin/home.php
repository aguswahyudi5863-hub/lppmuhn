<!-- Begin Page Content -->
<div class="container-fluid">


    <h1 class="h3 mb-4 text-gray-800">Dashboard</h1>
    <a class="btn mb-3 btn-dark btn-sm" href="" data-toggle="modal" data-target="#tambahberita">Tambah Berita</a>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Date</th>
                <th scope="col">Gambar</th>
                <th scope="col">Judul</th>
                <th scope="col">Detail</th>
                <th scope="col">Aksi</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"></th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <a class="btn btn-warning btn-sm" href="">Edit</a>
                    <a class="btn btn-danger btn-sm" href="">Hapus</a>
                </td>
            </tr>

        </tbody>
    </table>





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
            <form method="POST" action="Home/index">
                <div class="modal-body">
                    <div class="form-group mb-3">
                        <input type="text" name="date" class="form-control" id="exampleFormControlInput1" placeholder="date">
                    </div>
                    <div class="form-group mb-3">
                        <input type="text" name="gambar" class="form-control" id="exampleFormControlInput1" placeholder="gambar">
                    </div>
                    <div class="form-group mb-3">
                        <input type="text" name="judul" class="form-control" id="exampleFormControlInput1" placeholder="judul">
                    </div>
                    <div class="form-group mb-3">
                        <textarea placeholder="detail" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Tambah</button>
                </div>
            </form>
        </div>
    </div>
</div>