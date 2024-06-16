<div id="recent-posts">
    <h4>Recent Posts</h4>
    <ul class="list-unstyled">
        <?php $__currentLoopData = $sidebar_recent_posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sidebarRecentPosts): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="card mb-3 border-0" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <a href="<?php echo e(route('posts.show', ['slug' => $sidebarRecentPosts->slug])); ?>">
                            <?php if($sidebarRecentPosts->featured_image && Storage::exists('public/images/posts/' . $sidebarRecentPosts->featured_image)): ?>
                                <img src="<?php echo e(Storage::url('images/posts/' . $sidebarRecentPosts->featured_image)); ?>"
                                    class="card-img-top">
                            <?php else: ?>
                                <img src="<?php echo e(asset('storage/images/general/noimage.jpg')); ?>" class="card-img-top">
                            <?php endif; ?>
                        </a>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="<?php echo e(route('posts.show', ['slug' => $sidebarRecentPosts->slug])); ?>"
                                    class="text-decoration-none">
                                    <?php echo e(Str::limit($sidebarRecentPosts->title, 30)); ?>

                                </a>
                            </h5>
                            <span class="badge text-bg-dark mt-1">
                                <i class="fa fa-calendar"></i>
                                <?php echo e(\Carbon\Carbon::parse($sidebarRecentPosts->created_at)->format('d F Y')); ?>

                            </span>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </ul>
</div>
<?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/frontend/layouts/sidebar_recent_post.blade.php ENDPATH**/ ?>