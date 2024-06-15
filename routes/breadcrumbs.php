<?php // routes/breadcrumbs.php

// Note: Laravel will automatically resolve `Breadcrumbs::` without
// this import. This is nice for IDE syntax and refactoring.
use Diglactic\Breadcrumbs\Breadcrumbs;

// This import is also not required, and you could replace `BreadcrumbTrail $trail`
//  with `$trail`. This is nice for IDE type checking and completion.
use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;

// ============================= Blogging
// Blog
Breadcrumbs::for('blog', function ($trail) {
    $trail->push('Blog', route('blog.home'));
});

// Blog > home
Breadcrumbs::for('blog_home', function ($trail) {
    $trail->parent('blog');
    $trail->push('Home', route('blog.home'));
});

// Blog > posts
Breadcrumbs::for('blog_post', function ($trail,$title) {
    $trail->parent('blog');
    $trail->push($title, '#');
});

// Blog > categories
Breadcrumbs::for('blog_categories', function ($trail) {
    $trail->parent('blog');
    $trail->push('Categories', route('blog.categories'));
});

// Blog > categories - post category
Breadcrumbs::for('blog_posts_category', function ($trail, $title) {
    $trail->parent('blog');
    $trail->push('Categories', route('blog.categories'));
    $trail->push($title, '#');
});

// Blog > categories - tag category
Breadcrumbs::for('blog_posts_tag', function ($trail, $title) {
    $trail->parent('blog');
    $trail->push('Tags', route('blog.tags'));
    $trail->push($title, '#');
});


// Blog > tags
Breadcrumbs::for('blog_tags', function ($trail) {
    $trail->parent('blog');
    $trail->push('Tags', route('blog.tags'));
});

// Blog > Search
Breadcrumbs::for('blog_search', function ($trail,$keyword) {
    $trail->parent('blog');
    $trail->push('Search', route('blog.search'));
    $trail->push($keyword, route('blog.search'));
});


// ============================= DASHBOARD
// Dashboard
Breadcrumbs::for('dashboard', function ($trail) {
    $trail->push('Dashboard', route('dasboard.index'));
});

// Dashboard > home
Breadcrumbs::for('dashboard_home', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Home', '#');
});

// Dashboard > categories
Breadcrumbs::for('categories', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Categories', route('categories.index'));
});

// Dashboard > category > add
Breadcrumbs::for('add_category', function ($trail) {
    $trail->parent('categories');
    $trail->push('Add', route('categories.create'));
});

// Dashboard > category > edit
Breadcrumbs::for('edit_category', function ($trail,$category) {
    $trail->parent('categories');
    $trail->push('Edit', route('categories.edit',['category'=> $category]));
});

// Dashboard > category > edit > title
Breadcrumbs::for('edit_category_title', function ($trail,$category) {
    $trail->parent('edit_category',$category);
    $trail->push( $category->title, route('categories.edit',['category'=> $category]));
});

// Dashboard > category > detail
Breadcrumbs::for('detail_category', function ($trail,$category) {
    $trail->parent('categories',$category);
    $trail->push('Detail', route('categories.show',['category'=> $category]));
});

// Dashboard > category > detail > title
Breadcrumbs::for('detail_category_title', function ($trail,$category) {
    $trail->parent('detail_category',$category);
    $trail->push( $category->title, route('categories.show',['category'=> $category]));
});

// Dashboard > tags
Breadcrumbs::for('tags', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Tag', route('tags.index'));
});

// Dashboard > tags > add
Breadcrumbs::for('add_tag', function ($trail) {
    $trail->parent('tags');
    $trail->push('Add', route('tags.create'));
});

// Dashboard > tags > edit > title
Breadcrumbs::for('edit_tag', function ($trail, $tag) {
    $trail->parent('tags');
    $trail->push('Edit', route('tags.edit',['tag'=> $tag]));
    $trail->push($tag->title, route('tags.edit',['tag'=> $tag]));
});

// Dashboard > posts
Breadcrumbs::for('posts', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Posts', route('posts.index'));
});

// Dashboard > posts > add
Breadcrumbs::for('add_post', function ($trail) {
    $trail->parent('posts');
    $trail->push('Add', route('posts.create'));
});

// Dashboard > posts > detail
Breadcrumbs::for('detail_post', function ($trail,$post) {
    $trail->parent('posts');
    $trail->push('Detail', route('posts.show',['post'=>$post]));
    $trail->push($post->title, route('posts.show',['post'=>$post]));
});

// Dashboard > posts > edit
Breadcrumbs::for('edit_post', function ($trail,$post) {
    $trail->parent('posts');
    $trail->push('Edit', route('posts.edit',['post'=>$post]));
    $trail->push($post->title, route('posts.edit',['post'=>$post]));
});

// Dashboard > File Manager
Breadcrumbs::for('file_manager', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('File Manager', route('filemanager.index'));
});

// Dashboard > roles
Breadcrumbs::for('roles', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Roles', route('roles.index'));
});

// Dashboard > roles > add
Breadcrumbs::for('add_role', function ($trail) {
    $trail->parent('roles');
    $trail->push('Add', route('roles.create'));
});

// Dashboard > roles > detail
Breadcrumbs::for('detail_role', function ($trail,$role) {
    $trail->parent('roles');
    $trail->push('Detail', route('roles.show',['role'=>$role]));
    $trail->push($role->name, route('roles.show',['role'=>$role]));
});

// Dashboard > roles > edit
Breadcrumbs::for('edit_role', function ($trail,$role) {
    $trail->parent('roles');
    $trail->push('Edit', route('roles.edit',['role'=>$role]));
    $trail->push($role->name, route('roles.edit',['role'=>$role]));
});

// Dashboard > users
Breadcrumbs::for('users', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Users', route('users.index'));
});

// Dashboard > users > add
Breadcrumbs::for('add_user', function ($trail) {
    $trail->parent('users');
    $trail->push('Add', route('users.create'));
});

// Dashboard > user > edit
Breadcrumbs::for('edit_user', function ($trail,$user) {
    $trail->parent('users');
    $trail->push('Edit', route('users.edit',['user'=>$user]));
    $trail->push($user->name, route('users.edit',['user'=>$user]));
});


// Home > Blog
// Breadcrumbs::for('blog', function (BreadcrumbTrail $trail) {
//     $trail->parent('home');
//     $trail->push('Blog', route('blog'));
// });

// // Home > Blog > [Category]
// Breadcrumbs::for('category', function (BreadcrumbTrail $trail, $category) {
//     $trail->parent('blog');
//     $trail->push($category->title, route('category', $category));
// });