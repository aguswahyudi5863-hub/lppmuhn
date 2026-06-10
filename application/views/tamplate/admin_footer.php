<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; LPPM <?= date('Y'); ?></span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="<?= base_url('admin/Auth_admin/log_out') ?>">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="<?= base_url('back_end/'); ?>vendor/jquery/jquery.min.js"></script>
<script src="<?= base_url('back_end/'); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="<?= base_url('back_end/'); ?>vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="<?= base_url('back_end/'); ?>js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="<?= base_url('back_end/'); ?>vendor/chart.js/Chart.min.js"></script>
<!-- Page level plugins -->
<script src="<?= base_url('back_end/'); ?>vendor/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url('back_end/'); ?>vendor/datatables/dataTables.bootstrap4.min.js"></script>
<!-- Page level custom scripts -->
<script src="<?= base_url('back_end/'); ?>js/demo/datatables-demo.js"></script>

<!-- Page level custom scripts -->
<script src="<?= base_url('back_end/'); ?>js/demo/chart-area-demo.js"></script>
<script src="<?= base_url('back_end/'); ?>js/demo/chart-pie-demo.js"></script>

<!-- ck Editor -->

<script src="<?= base_url('ckeditor/') ?>ckeditor.js"></script>
<script src="<?= base_url('ckeditor/samples/') ?>js/sample.js"></script>
<link rel="stylesheet" href="<?= base_url('ckeditor/') ?>css/samples.css">
<link rel="stylesheet" href="<?= base_url('ckeditor/') ?>toolbarconfigurator/lib/codemirror/neo.css">

<script>
    initSample();
</script>


</body>

</html>