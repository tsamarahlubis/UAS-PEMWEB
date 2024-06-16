<?php $__env->startSection('content'); ?>
    <?php if($errors->any()): ?>
        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="alert alert-danger"><?php echo e($error); ?></div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>

    <form action="<?php echo e(route('navigations.update', $navigations->id)); ?>" method="POST">
        <?php echo csrf_field(); ?>
        <?php echo method_field('PUT'); ?>
        
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="name">Menu Name</label>
                            <input type="text" class="form-control" name="name" id="name"
                                value="<?php echo e(old('name', $navigations->name)); ?>">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="name">URL</label>
                            <input type="text" class="form-control" name="url" id="url"
                                value="<?php echo e(old('url', $navigations->url)); ?>">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="name">Icon</label>
                            <input type="text" class="form-control" name="icon" id="icon"
                                value="<?php echo e(old('icon', $navigations->icon)); ?>">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="name">Sort</label>
                            <input type="number" class="form-control" name="sort" id="sort"
                                value="<?php echo e(old('sort', $navigations->sort)); ?>">
                        </div>
                    </div>
                </div>

                <hr>

                <div class="row">
                    <div class="col-md-3"><label for="name">SubMenu Name</label></div>
                    <div class="col-md-3"><label for="name">URL</label></div>
                    <div class="col-md-3"><label for="name">Icon</label></div>
                    <div class="col-md-3"><label for="name">Sort</label></div>
                </div>

                <div class="form-group" id="dynamicFields">
                    <!-- Display existing submenus -->
                    <?php $__currentLoopData = $navigations->submenus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $submenu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="row mb-3" id="row<?php echo e($loop->index); ?>">
                            <div class="col-md-3">
                                <input type="text" class="form-control" name="submenu_name[]" placeholder="SubMenu Name"
                                    value="<?php echo e(old('submenu_name.' . $loop->index, $submenu->name)); ?>">
                            </div>
                            <div class="col-md-3">
                                <input type="text" class="form-control" name="submenu_url[]" placeholder="URL"
                                    value="<?php echo e(old('submenu_url.' . $loop->index, $submenu->url)); ?>">
                            </div>
                            <div class="col-md-3">
                                <input type="text" class="form-control" name="submenu_icon[]" placeholder="Icon"
                                    value="<?php echo e(old('submenu_icon.' . $loop->index, $submenu->icon)); ?>">
                            </div>
                            <div class="col-md-2">
                                <input type="number" class="form-control" name="submenu_sort[]" placeholder="Sort"
                                    value="<?php echo e(old('submenu_sort.' . $loop->index, $submenu->sort)); ?>">
                            </div>
                            <div class="col-md-1">
                                <button type="button" class="btn btn-danger" onclick="removeRow(<?php echo e($loop->index); ?>)">
                                    <i class="fa fa-minus"></i>
                                </button>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </div>

                <button type="button" class="btn btn-success" id="addRow"><i class="fa fa-plus"></i> Add
                    SubMenu</button>
            </div>
            <div class="card-footer">
                <button type="submit" name="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
                <button type="reset" name="reset" class="btn btn-danger"><i class="fa fa-sync"></i> Reset</button>
                <a href="<?php echo e(route('navigations.index')); ?>" name="reset" class="btn btn-dark"><i
                        class="fa fa-arrow-left"></i>
                    Back</a>
            </div>
            <!-- /.card-body -->
        </div>
    </form>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script_addon'); ?>
    <script>
        $(document).ready(function() {
            // Counter for dynamic fields
            var counter = 0;

            // Function to add a new row
            $("#addRow").on("click", function() {
                counter++;
                var newRow = `<div class="row mb-3" id="row${counter}">
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" name="submenu_name[]" placeholder="SubMenu Name">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" name="submenu_url[]" placeholder="URL">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" name="submenu_icon[]" placeholder="Icon">
                                        </div>
                                        <div class="col-md-2">
                                            <input type="number" class="form-control" name="submenu_sort[]" placeholder="Sort">
                                        </div>
                                        <div class="col-md-1">
                                            <button type="button" class="btn btn-danger" onclick="removeRow(${counter})">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                    </div>`;

                $("#dynamicFields").append(newRow);
            });

            // Function to remove a row
            window.removeRow = function(rowId) {
                $("#row" + rowId).remove();
            };
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\kuliah\UAS PEMWEB\lara-starter\resources\views/backend/navigation/edit.blade.php ENDPATH**/ ?>