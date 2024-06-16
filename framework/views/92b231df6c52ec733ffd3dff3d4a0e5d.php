<?php $__env->startSection('content'); ?>
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">
                <a href="<?php echo e(route('categories.create')); ?>" class="btn btn-primary">
                    <i class="fa fa-plus"></i>
                    Add Data
                </a>
            </h3>
        </div>
        <!-- /.card-header -->

        <div class="card-body">
            <div class="table-responsive">
                <table id="dataTable" class="table table-striped table-bordered">
                    <thead class="table-dark">
                        <th>No.</th>
                        <th>Name</th>
                        <th>Slug</th>
                        <th>Action</th>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $categories): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td style="width: 50px; text-align:center"><?php echo e($index + 1); ?></td>
                                <td><?php echo e($categories->name); ?></td>
                                <td><?php echo e($categories->slug); ?></td>
                                <td style="width: 100px; text-align:center">
                                    <form action="<?php echo e(route('categories.destroy', $categories->id)); ?>" method="POST"
                                        class="d-inline delete-data">
                                        <div class="btn-group">
                                            <a href="<?php echo e(route('categories.edit', $categories->id)); ?>"
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
        <!-- /.card-body -->
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script_addon'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')); ?>">
    <script src="<?php echo e(asset('assets/plugins/datatables/jquery.dataTables.min.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')); ?>"></script>
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
                ]
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/backend/category/index.blade.php ENDPATH**/ ?>