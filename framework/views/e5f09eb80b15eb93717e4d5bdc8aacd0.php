<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">

<head>
    <title>Login - <?php echo e(config('app.name')); ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/plugins/fontawesome-free/css/all.min.css')); ?>">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet"
        href="<?php echo e(asset('assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')); ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/template/backend/dist/css/adminlte.min.css')); ?>">
    <link href="<?php echo e(asset('images/general/app-logo.png')); ?>" rel="shortcut icon" />
</head>

<body class="hold-transition login-page">
    <?php echo $__env->yieldContent('content'); ?>
</body>

</html>
<?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/layouts/guest.blade.php ENDPATH**/ ?>