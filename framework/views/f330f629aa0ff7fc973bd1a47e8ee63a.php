<?php $__env->startSection('content'); ?>
    <section id="latest-post">
        <div class="container mb-3">
            <h1><?php echo e($page_title); ?></h1>
            <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header bg-warning">Latest Post</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <th>No.</th>
                                        <th>Title</th>
                                        <th>Created At</th>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $recent_posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $posts): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td style="width: 50px; text-align:center"><?php echo e($index + 1); ?></td>
                                                <td><?php echo e($posts->title); ?></td>
                                                <td><?php echo e($posts->created_at); ?></td>
                                            </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header bg-primary text-light">Popular Post</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <th>No.</th>
                                        <th>Title</th>
                                        <th>View</th>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $recent_posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $posts): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td style="width: 50px; text-align:center"><?php echo e($index + 1); ?></td>
                                                <td><?php echo e($posts->title); ?></td>
                                                <td><?php echo e(rand(0, 150)); ?>x</td>
                                            </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/frontend/author/dashboard.blade.php ENDPATH**/ ?>