<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">LPPM Admin</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="<?= base_url('admin/Dashboard') ?>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        News
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/Manage_news') ?>">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Manage News</span>
        </a>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/Manage_visimisi'); ?>">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Manage Visi Misi</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/Manage_leader'); ?>">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Greeted the leader</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/Manage_team'); ?>">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Manage Team</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/Manage_announcement'); ?>">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Manage Announcement</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Arsip
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="tables.html">
            <i class="fas fa-fw fa-folder"></i>
            <span>Add Arsip</span>
        </a>
    </li>

    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="charts.html">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>View Arsip</span></a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('Home'); ?>">
            <i class="fas fa-fw fa-table"></i>
            <span>Website</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/Auth_admin/log_out') ?>">
            <i class="fas fa-fw fa-table"></i>
            <span>Log Out</span></a>
    </li>
    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->