<h4>Archives</h4>
<ol class="list-unstyled mb-3">
    <?php if($monthly_post_archive): ?>
        <?php $__currentLoopData = $monthly_post_archive; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $postGroup): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <a href="<?php echo e(route('posts.archive', ['month' => $postGroup->month, 'year' => $postGroup->year])); ?>">
                <?php echo e(date('F Y', mktime(0, 0, 0, $postGroup->month, 1, $postGroup->year))); ?>

            </a>
            <br>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
</ol>
<?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/frontend/layouts/sidebar_archive.blade.php ENDPATH**/ ?>