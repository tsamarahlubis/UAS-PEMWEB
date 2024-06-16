<?php
    use App\Helpers\NavigationHelper;
?>

<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown user-menu">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                <?php if(auth()->user()->profile_image): ?>
                    <img src="<?php echo e(Storage::url('images/users/' . auth()->user()->profile_image)); ?>"
                        class="user-image img-circle elevation-1" alt="User Image">
                <?php else: ?>
                    <img src="<?php echo e(asset('storage/images/default-users.png')); ?>" class="user-image img-circle elevation-1"
                        alt="User Image">
                <?php endif; ?>
                <div class="d-none d-md-inline position-relative">
                    <span><?php echo e(auth()->user()->name); ?></span>
                </div>
            </a>
            <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <li class="user-header text-bold">
                    <div class="row">
                        <div class="col">
                            <?php if(auth()->user()->profile_image != null): ?>
                                <img src="<?php echo e(Storage::url('images/users/' . auth()->user()->profile_image)); ?>"
                                    class="img-fluid img-circle elevation-1" style="width:50%" alt="User Image">
                            <?php else: ?>
                                <img src="<?php echo e(asset('images/default-users.jpg')); ?>"
                                    class="img-fluid img-circle elevation-1" style="width:50%" alt="User Image">
                            <?php endif; ?>
                        </div>
                    </div>
                    <p>
                        <?php echo e(auth()->user()->name); ?>

                    </p>
                </li>

                <li class="user-footer">
                    <div class="row">
                        <div class="col-12">
                            <div class="btn-block">
                                <a href="<?php echo e(route('profile.edit', auth()->user()->id)); ?>"
                                    class="btn btn-block btn-warning">
                                    <i class="fas fa-user-edit"></i> Edit Profil
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <form method="POST" style="display:inline;" action="<?php echo e(route('logout')); ?>">
                <?php echo csrf_field(); ?>
                <a href="<?php echo e(route('logout')); ?>" class="nav-link"
                    onclick="event.preventDefault(); this.closest('form').submit();">
                    <i class="mr-2 fas fa-power-off text-danger"></i>
                </a>
            </form>
        </li>
    </ul>
</nav>
<!-- /.navbar -->

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-info elevation-4">
    <!-- Brand Logo -->
    <a href="<?php echo e(route('dashboard.index')); ?>" class="brand-link">
        <img src="<?php echo e(asset('storage/images/app-logo.png')); ?>" alt="<?php echo e(config('app.name')); ?>"
            class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light"><?php echo e(config('app.name')); ?></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2 mb-5">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                <li class="nav-item">
                    <a href="<?php echo e(route('home.index')); ?>" class="nav-link">
                        <i class="nav-icon fas fa-globe"></i>
                        <p>Homepage</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="<?php echo e(route('dashboard.index')); ?>"
                        class="nav-link <?php echo e(request()->segment(2) == 'dashboard' ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>

                <?php $__currentLoopData = NavigationHelper::getMainMenu(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mainMenu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('index ' . $mainMenu->url)): ?>
                        <li
                            class="nav-item <?php echo e(request()->segment(2) == Str::after($mainMenu->url, 'admin/') ? 'menu-open' : ''); ?>">
                            <a href="<?php echo e(url('/' . $mainMenu->url)); ?>"
                                class="nav-link <?php echo e(request()->segment(2) == Str::after($mainMenu->url, 'admin/') ? 'active' : ''); ?>">
                                <i class="nav-icon <?php echo e($mainMenu->icon); ?>"></i>
                                <p><?php echo e($mainMenu->name); ?></p>

                                <?php if($mainMenu->subMenus->isNotEmpty()): ?>
                                    <i class="right fas fa-angle-left"></i>
                                <?php endif; ?>
                            </a>

                            <?php if($mainMenu->subMenus->isNotEmpty()): ?>
                                <ul class="nav nav-treeview">
                                    <?php $__currentLoopData = $mainMenu->subMenus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $submenu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li class="nav-item">
                                            <a href="<?php echo e(url('/' . $submenu->url)); ?>" class="nav-link <?php echo e(url()->current() == url('/' . $submenu->url) ? 'active' : ''); ?>">
                                                <i class="<?php echo e($submenu->icon); ?>"></i>
                                                <p><?php echo e($submenu->name); ?></p>
                                            </a>
                                        </li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            <?php endif; ?>
                        </li>
                    <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
<?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/layouts/navigation.blade.php ENDPATH**/ ?>