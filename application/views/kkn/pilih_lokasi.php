
<div class="row">
    <div class="col-lg-12 col-12 mb-4">
        <h5 class="font-weight-bold mb-3"><i class="far fa-user"></i> Lokasi KKN</h5>
       
        <div class="form-row">
            <div class="col-3">
                <div class="form-group">
                    <input class="form-control" placeholder="Masukan Nama Kabupaten" name="kabupaten">
                </div>
            </div>
            <div class="col-3">
                <div class="form-group">
                    <input class="form-control" placeholder="Masukan Nama Kecamatan" name="kecamatan">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <input class="form-control" placeholder="Masukan Nama Desa" name="desa">
                </div>
            </div>
            <div class="col">
                <button class="btn btn-primary btn-block" onclick ="daftar_lokasi()">Cari</button>
            </div>
        </div>
        
        <div class="mb-4">
            <span class="textLokasiRes">Menampilkan desa xxx dari xxx</span>
        </div>
        
        <div id="dataLokasi">
            <div>

            </div>
        </div>
        
        
    </div>
    
</div>

<!-- Sweet Alert -->
<link rel="stylesheet" href="<?= base_url('back_end/vendor/sweetalert2/dist/sweetalert2.min.css') ?>">
<script src="<?php echo base_url('back_end/vendor/sweetalert2/dist/sweetalert2.min.js') ?>"></script>
<script>
    //Panggil SweetAlert2
    function msg(icon,title,text){
        Swal.fire({  
            title: title,
            text: text,
            icon: icon,
        })
    };

 
    function daftar_lokasi(){
        let kabupaten = $('[name="kabupaten"]').val();
        let kecamatan = $('[name="kecamatan"]').val();
        let desa = $('[name="desa"]').val();

        $.ajax({
            type : "POST",
            url  : "<?php echo base_url('kkn/daftar_lokasi')?>",
            dataType : "JSON",
            data : {
                kabupaten:kabupaten,
                kecamatan:kecamatan,
                desa:desa
            },
            success: function(res){
                console.log(res);
                $('#dataLokasi').empty();
                var dataLokasi = '';
                $.each(res.data, function(r){
                    dataLokasi += `
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-1 col-2 text-center">
                                    <i class="fa fa-map-marker-alt" style="font-size:50px; color:red;"></i>
                                </div>
                                <div class="col-lg-8 col">
                                    <span>Kabupaten / Kecamatan</span>
                                    <h5 class="font-weight-bold">${res.data[r].kkn_kabupaten} / ${res.data[r].kkn_kecamatan}</h5>
                                    <span>Desa</span>
                                    <h2 class="font-weight-bold">${res.data[r].kkn_desa}</h2>
                                    <br>
                                    <button class="btn btn-primary pilihLokasi" kkn_id="${res.data[r].kkn_kode}" kkn_desa = '${res.data[r].kkn_desa}'> Pilih Lokasi</button>
                                </div>

                                <div class="col-lg-2 col-12">
                                    <div class="card" style="border:2px solid red">
                                        <div class="card-body text-center">
                                            <span>Sisa Kuota</span>
                                            <h1 class="font-weight-bold">${res.data[r].kkn_sisa_kuota}</h1>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>`;    
                });
                $('#dataLokasi').append(dataLokasi);
                $('.textLokasiRes').text(res.txt);
            },
            error: function (request, status, error) {
                msg('error','Informasi','Terjadi kesalahan');
            }
        });
    }

    function pilih_lokasi(kode){
        $.ajax({
            type : "POST",
            url  : "<?php echo base_url('kkn/trans_pilih_lokasi')?>",
            dataType : "JSON",
            data : {
                kode:kode
            },
            success: function(res){
                console.log(res);
                if(res.sts != 'true'){
                    msg('info','Informasi',res.msg);
                }else{
                    // msg('success','Informasi','Berhasil memilih lokasi KKN');
                    location.reload();
                }
            },
            error: function (request, status, error) {
                msg('error','Informasi','Terjadi kesalahan');
            }
        });
    }

    $('#dataLokasi').on('click','.pilihLokasi',function(){
        var id = $(this).attr("kkn_id");
        var desa = $(this).attr("kkn_desa");
        Swal.fire({
            title: 'Informasi',
            html: `Apakah anda yakin memilih lokasi KKN ? <h4><b> Desa ${desa} </b></h4>`,
            icon: 'info',
            confirmButtonColor: '#3085d6',
            confirmButtonText: 'Ya',
            showCancelButton: true,
            allowOutsideClick:false
        }).then((result) => {
            pilih_lokasi(id);
            daftar_lokasi()
        })
    });
    
    $(function(){
        daftar_lokasi();
    })
</script>


 
