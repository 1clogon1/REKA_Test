<?php $__env->startSection('title'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('view'); ?>
    <div class="text-center">
        <h1>
            Нажмете на кнопку "Создать заметку" чтобы начать работу с данным сервисом
        </h1>
    </div>
    <div class="text-center">
        <button type="submit" class="btn-dark btn">Создать заметку</button>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\reka\resources\views/welcome.blade.php ENDPATH**/ ?>