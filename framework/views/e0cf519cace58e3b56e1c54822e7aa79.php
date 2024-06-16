<header class="p-3 mb-3 border-bottom sticky-top bg-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a class="navbar-brand" href="<?php echo e(route('home.index')); ?>"><?php echo e(config('app.name')); ?></a>

            <ul class="nav col-12 col-lg-auto mx-3 me-lg-auto mb-2 justify-content-center mb-md-0">
                <li>
                    <a class="nav-link <?php echo e(url()->current() == url('') ? 'link-primary' : 'link-secondary'); ?> px-2"
                        href="<?php echo e(route('home.index')); ?>">Home</a>
                </li>
                <li>
                    <a class="nav-link <?php echo e(request()->segment(1) == 'posts' && request()->segment(2) != 'category' ? 'link-primary' : 'link-secondary'); ?> px-2"
                        href="<?php echo e(route('posts.index')); ?>">Blog</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle <?php echo e(request()->segment(2) == 'category' ? 'link-primary' : 'link-secondary'); ?>"
                        href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu">
                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li>
                                <a class="dropdown-item <?php echo e(request()->segment(3) == $category->slug ? 'link-primary' : 'link-secondary'); ?>"
                                    href="<?php echo e(route('posts.category', $category->slug)); ?>">
                                    <?php echo e($category->name); ?>

                                </a>
                            </li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                </li>

            </ul>

            <form action="<?php echo e(route('posts.search')); ?>" method="get" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                <?php echo csrf_field(); ?>
                <div class="input-group">
                    <input type="text" name="keywords" id="keywords" class="form-control"
                        placeholder="Search post by keywords or description" size="35">
                    <button type="submit" class="btn btn-success btn-md"><i class="fa fa-search"></i> Search</button>
                </div>
            </form>

            <?php if(Auth::check()): ?>
                <?php if(auth()->user()->hasRole('author')): ?>
                    <div class="dropdown text-end">
                        <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <?php if(Storage::exists('public/images/users/' . auth()->user()->profile_image)): ?>
                                <img src="<?php echo e(Storage::url('images/users/' . auth()->user()->profile_image)); ?>"
                                    width="32" height="32">
                            <?php else: ?>
                                <img src="<?php echo e(asset('storage/images/default-user.png')); ?>" class="rounded-circle">
                            <?php endif; ?>
                        </a>
                        <ul class="dropdown-menu text-small" style="">
                            <li><a class="dropdown-item" href="<?php echo e(route('author.dashboard')); ?>">Dashboard</a></li>
                            <li><a class="dropdown-item" href="<?php echo e(route('author.posts')); ?>">My Posts</a></li>
                            <li><a class="dropdown-item" href="<?php echo e(route('author.profile')); ?>">Profile</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <form method="POST" style="display:inline;" action="<?php echo e(route('logout')); ?>">
                                <?php echo csrf_field(); ?>
                                <li>
                                    <a href="<?php echo e(route('logout')); ?>" class="dropdown-item"
                                        onclick="event.preventDefault(); this.closest('form').submit();">
                                        Logout
                                    </a>
                                </li>
                            </form>
                        </ul>
                    </div>
                <?php elseif(auth()->user()->hasRole('admin')): ?>
                    <div class="text-end">
                        <a href="<?php echo e(route('dashboard.index')); ?>" class="btn btn-primary me-2">
                            <i class="fas fa-tachometer-alt"></i> Dashboard
                        </a>
                    </div>
                <?php endif; ?>
            <?php else: ?>
                <div class="text-end">
                    <a href="<?php echo e(route('login')); ?>" class="btn btn-primary me-2"><i class="fa fa-sign-in"></i> Login</a>
                </div>
            <?php endif; ?>
        </div>
    </div>
</header>
<?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/frontend/layouts/navigation.blade.php ENDPATH**/ ?>