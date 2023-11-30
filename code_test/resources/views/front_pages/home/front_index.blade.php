<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home | Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('/') }}front/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('/') }}front/css/style.css">
</head>
<body>
<div class="body-wrapper">
    <!--//////////// Nav Menu ////////////  -->
    <nav class="navigation sticky">
        <div class="container">
            <div class="header-position">
                <div class="logo">
                    <a href="{{ route('home.front') }}" class="logo-link"><img src="{{ asset('/') }}front/img/logo.png" alt="" class="logo-image"></a>
                </div>
                <div class="menu">

                    <a href="{{ route('login') }}" class="custom-btn">Login</a>
                    <a href="{{ route('register') }}" class="custom-btn">Register</a>
                </div>
            </div>
        </div>

    </nav>


    <!--//////////// End Nav Menu ////////////  -->
    <!--=====================  Content wrapper ===================   -->
    <div class="content-wrapper">
        <!--//////////// BANNER ////////////  -->
        <section>
            <div class="banner ">
                <div class="container">
                    <div class="banner-content">
                        <div class="row">
                            <div class="col-md-6">
                                <h1 class="banner-heading">Welcome to my web application.</h1>
                                <p class="banner-des">Increase productivity with simple to-do app. app to manage
                                    your personal budgets.
                                </p>
                                <a href="#" class="custom-btn">Products</a>
                            </div>
                            <div class="col-md-6">
                                <div class="banner-img">
                                    <img src="{{ asset('/') }}front/img/Asset%201.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--//////////// END  BANNER ////////////  -->


        <!--//////////// Product Table ////////////  -->

        <section>
            <div class="product py-5">
                <div class="container">
                    <div class="sec-head-content">
                        <h2 class="sec-head">All Products</h2>
                    </div>

                    <hr>

                    <table class="table table-hover table-primary table-warning table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">#S/ON</th>
                            <th scope="col">Product Name</th>
                            <th scope="col">Product Quantity</th>
                            <th scope="col">Product Price</th>
                            <th scope="col">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($products as $product)
                            <tr>

                                <td>{{ $loop->index+1 }}</td>
                                <td>{{ $product->name }}</td>

                                <td>{{ $product->quantity }}</td>
                                <td>{{ $product->price.'.'.'Tk'}} </td>
                                <td>
                                    <a href="#" class="btn btn-sm btn-secondary"> More</a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <div class="row end">
                        {{ $products->links()  }}
                    </div>
                </div>
            </div>
        </section>
        <!--//////////// End Product Table ////////////  -->

        <!--//////////// Services ////////////  -->

        <section>
            <div class="service py-5">
                <div class="container">
                    <div class="row">
                        <div class="section-head">
                            <div class="col-md-5">
                                <div class="sec-head-content">
                                    <p class="top-d">Care Features</p>
                                    <h2 class="sec-head">Provide Awesome Service
                                        with Our Tools</h2>
                                    <p class="title-des">Culpa dolores fugiat hic illum iste magnam necessitatibus nesciunt nulla perspiciatis veniam.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-5">
                        <div class="col-md-4">
                            <div class="service-card">
                                <img src="{{ asset('/') }}front/img/Untitled-3.png" alt="" class="service-img">
                                <h6 class="service-name">UX Design</h6>
                                <p class="service-des">I design the current page. Here I used basic HTML, CSS, and Bootstrap for layouts.!</p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="service-card">
                                <img src="{{ asset('/') }}front/img/Untitled-4.png" alt="" class="service-img">
                                <h6 class="service-name">Product Design</h6>
                                <p class="service-des">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur ipsa laudantium minima mollitia repellat veniam!</p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="service-card">
                                <img src="{{ asset('/') }}front/img/Untitled-5.png" alt="" class="service-img">
                                <h6 class="service-name">Web Development</h6>
                                <p class="service-des">Several projects like management system, a blog site & online food ordering system, these projects have helped me gain practical experience and enhance my skills in web development.!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--//////////// End Services ////////////  -->


        <!--/////////////////////////////////Footer Section ///////////////////////////////////-->
        <section>
            <footer class="footer mt-5">
                <div class="container">
                    <div class="footer-sec-con d-flex justify-content-center align-content-center">
                        <div class="col-md-6">
                            <div class="content">
                                <h2 class="footer-head">Have Question in mind? <br/>Let us help you.</h2>

                                <div class="menu">
                                    <ul class="footer-ul">
                                        <li class="footer-list " ><a href="https://github.com/MdBakibillahAnuj" class="footer-link">GitHub</a></li>
                                        <li class="footer-list" ><a href="https://www.facebook.com/Anuz.mahmoud/" class="footer-link">Facebook</a></li>
                                        <li class="footer-list" ><a href="https://www.linkedin.com/in/md-bakibillah-anuj-97a52b269/" class="footer-link">Linkedin</a></li>
                                        <li class="footer-list" ><a href="" class="footer-link">Services</a></li>
                                    </ul>
                                </div>
                                <div class="cp-section mt-5">
                                    <p class="cp">2023 @ All rights reserved by Anuj</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </section>

        <!--/////////////////////////////////Footer Section End/////////////////////////////////////////-->

    </div>
</div>


<script src="{{ asset('/') }}front/jquery.min.js"></script>
<script src="{{ asset('/') }}front/bootstrap.bundle.min.js"></script>
<script src="{{ asset('/') }}front/mixitup.min.js"></script>
<script src="{{ asset('/') }}front/js/app.js"></script>

</body>
</html>
