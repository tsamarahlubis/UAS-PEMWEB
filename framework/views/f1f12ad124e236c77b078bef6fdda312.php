<?php $__env->startSection('content'); ?>
    <section id="latest-post">
        <div class="container mb-3">
            <h1><?php echo e($page_title); ?></h1>
            <div class="card">
                <div class="card-body">
                    <a href="<?php echo e(route('author.posts.create')); ?>" class="btn btn-primary mb-3"><i class="fa fa-plus"></i> New</a>
                    <div class="table-responsive">
                        <table id="dataTable" class="table table-striped table-bordered">
                            <thead class="table-dark">
                                <th>No.</th>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Action</th>
                            </thead>
                            <tbody>
                                <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $posts): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td style="width: 50px; text-align:center"><?php echo e($index + 1); ?></td>
                                        <td><?php echo e($posts->title); ?></td>
                                        <td><?php echo e($posts->category->name); ?></td>
                                        <td style="width: 100px; text-align:center">
                                            <form action="<?php echo e(route('author.posts.destroy', $posts->id)); ?>" method="POST"
                                                class="d-inline delete-data">
                                                <div class="btn-group">
                                                    <a href="<?php echo e(route('posts.show', ['slug' => $posts->slug])); ?>" class="btn btn-primary">
                                                        <i class="fa fa-eye"></i>
                                                    </a>
                                                    <a href="<?php echo e(route('author.posts.edit', $posts->id)); ?>"
                                                        class="btn btn-warning">
                                                        <i class="fa fa-pencil-alt"></i></a>
                                                    <?php echo csrf_field(); ?>
                                                    <?php echo method_field('DELETE'); ?>
                                                    <button class="btn btn-danger" title='Delete'>
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                </div>
                                            </form>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script_addon'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/plugins/datatables-bs5/datatables.min.css')); ?>">
    <script src="<?php echo e(asset('assets/plugins/datatables-bs5/datatables.min.js')); ?>"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#dataTable').DataTable({
                aaSorting: [
                    [0, 'desc']
                ],
                columnDefs: [{
                        targets: -1,
                        orderable: false
                    } // Menonaktifkan urutan untuk kolom terakhir
                ],
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/frontend/author/posts/index.blade.php ENDPATH**/ ?>