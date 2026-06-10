
<script>
    /*!
* Start Bootstrap - Simple Sidebar v6.0.6 (https://startbootstrap.com/template/simple-sidebar)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-simple-sidebar/blob/master/LICENSE)
*/
// 
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

// Toggle the side navigation
const sidebarToggle = document.body.querySelector('#sidebarToggle');
if (sidebarToggle) {
    // Uncomment Below to persist sidebar toggle between refreshes
    // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
    //     document.body.classList.toggle('sb-sidenav-toggled');
    // }
    sidebarToggle.addEventListener('click', event => {
        event.preventDefault();
        document.body.classList.toggle('sb-sidenav-toggled');
        localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
    });
}

});
</script>

<div class="d-flex" id="wrapper">
    <!-- Sidebar-->
    <div class="border-end bg-white" id="sidebar-wrapper">
        <div class="sidebar-heading border-bottom bg-light">
                <div class="text-center mb-5">
                <img src="<?php echo base_url('front_end/assets/img/logouhn__.png') ?>"  width="150">
                <h4 class="font-weight-bold mt-3">SIKKN</h4>
                <span>Versi 1.0</span>
            </div>
        </div>
        <div class="list-group list-group-flush">
            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('/kkn/dashboard') ?>">Home</a>
            <!-- <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('/kkn/profil') ?>">Update Biodata</a> -->
            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('/kkn/lokasi') ?>"> Lokasi KKN</a>
            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('/kkn/logout') ?>"> Logout</a>
        </div>
    </div>
       
    <!-- Page content wrapper-->
    <div id="page-content-wrapper">
        <!-- Top navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-warning">
            <button class="navbar-toggler ml-4" type="button" id="sidebarToggle">
            <span class="navbar-toggler-icon"></span>
            </button>

            <div class="mr-3 ml-3 p-3">
            <span class="font-weight-bold"><?= $this->session->userdata('sess_nim')." | ".$this->session->userdata('sess_nama') ?></span>
            </div>
        </nav>

        <!-- Page content-->
        <div class="container">
            <div class=" mt-4"></div>
