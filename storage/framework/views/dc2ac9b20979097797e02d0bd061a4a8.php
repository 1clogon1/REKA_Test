<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">    <title><?php echo $__env->yieldContent('title'); ?></title>
    <title><?php echo $__env->yieldContent('title'); ?></title>
</head>
<style>

</style>
<body>

<header>
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <a href="<?php echo e(route('Welcome_View')); ?>" class="text-decoration-none">
            <img src="<?php echo e(asset("/storage/logo2.png")); ?>" alt="Фотография логотипа" height="100">
        </a>

            <ul class="nav justify-content-center">
                <li><a class="nav-link link-dark" href="<?php echo e(route("Welcome_View")); ?>">Главная</a></li>
            </ul>

            <ul class="nav justify-content-center">
                <?php if(auth()->guard()->check()): ?>
                    <li><a class="nav-link link-dark" href="<?php echo e(route("ToDo_View")); ?>">Заметки</a></li>
                <?php endif; ?>
                <?php if(auth()->guard()->guest()): ?>
                <li><a class="nav-link link-dark" href="<?php echo e(route("Login_View")); ?>">Авторизация</a></li>
                <li><a class="nav-link link-dark" href="<?php echo e(route("Register_View")); ?>">Регистрация</a></li>
                <?php endif; ?>
                <?php if(auth()->guard()->check()): ?>
                    <li><a class="nav-link link-dark" href="<?php echo e(route("Logout")); ?>">Выход</a></li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</header>

<div class="py-3 container">
    <?php echo $__env->yieldContent('view'); ?>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<?php echo $__env->yieldContent('script'); ?>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\reka\resources\views/form.blade.php ENDPATH**/ ?>