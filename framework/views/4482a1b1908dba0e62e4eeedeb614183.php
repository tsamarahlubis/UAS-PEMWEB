<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">

<head>
    <title><?php echo e($page_title); ?> - <?php echo e(config('app.name')); ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <!-- Main Layout -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/template/frontend/dist/css/bootstrap.min.css')); ?>">
    <script src="<?php echo e(asset('assets/template/frontend/dist/js/bootstrap.bundle.min.js')); ?>"></script>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/plugins/fontawesome-free/css/all.min.css')); ?>">
    
    <script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js" integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous" async></script>
</head>

<body class="bg-light">
    <main>
        <?php echo $__env->make('frontend.layouts.navigation', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <?php echo $__env->yieldContent('content'); ?>

        <?php echo $__env->make('frontend.layouts.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <?php echo $__env->make('frontend.layouts.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php echo $__env->yieldContent('script_addon'); ?>
    </main>
</body>

</html>
<?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/frontend/layouts/app.blade.php ENDPATH**/ ?>