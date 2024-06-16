    <div class="position-sticky" style="top: 5rem;">
        <?php echo $__env->make('frontend.layouts.sidebar_recent_post', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php echo $__env->make('frontend.layouts.sidebar_archive', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
<?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/frontend/layouts/sidebar.blade.php ENDPATH**/ ?>