<div class="vertical-menu">

    <div data-simplebar class="h-100">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                <li class="menu-title">Menu</li>


                <li class="menu-title">Overview</li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-store"></i>
                        <span>Products</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="{{ route('products.view') }}">All Products</a></li>
                        <li><a href="{{ route('products.create') }}">Add Products</a></li>
{{--                        <li><a href="ecommerce-orders.html">Orders</a></li>--}}
{{--                        <li><a href="ecommerce-customers.html">Customers</a></li>--}}

                    </ul>
                </li>


            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
