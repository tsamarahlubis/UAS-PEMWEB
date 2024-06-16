<section id="latest-post">
    <div class="container">
        <div class="row row-cols-1 row-cols-md-2 g-4 py-3" data-masonry='{"percentPosition": true }'>
            <?php $__currentLoopData = $latest_posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $latestPost): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-4">
                    <div class="card bg-light rounded-4 shadow border-0">
                        <a href="<?php echo e(route('posts.show', ['slug' => $latestPost->slug])); ?>">
                            <?php if($latestPost->featured_image && Storage::exists('public/images/posts/' . $latestPost->featured_image)): ?>
                                <img src="<?php echo e(asset('storage/images/posts/' . $latestPost->featured_image)); ?>"
                                    class="card-img-top">
                            <?php else: ?>
                                <img src="<?php echo e(asset('storage/images/no-image.jpg')); ?>" class="card-img-top">
                            <?php endif; ?>
                        </a>

                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="<?php echo e(route('posts.show', ['slug' => $latestPost->slug])); ?>"
                                    class="text-decoration-none">
                                    <?php echo e($latestPost->title); ?>

                                </a>
                            </h4>
                            <p class="card-text mt-3"><?php echo Str::limit($latestPost->description, rand(25,450)); ?></p>
                        </div>
                        <div class="card-footer border-0">
                            <a href="<?php echo e(route('posts.show', ['slug' => $latestPost->slug])); ?>"
                                class="btn btn-primary">Read more</a>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</section>
<?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/frontend/home/latest_post.blade.php ENDPATH**/ ?>