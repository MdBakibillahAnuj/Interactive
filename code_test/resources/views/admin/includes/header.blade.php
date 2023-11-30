<header id="page-topbar">
    <div class="navbar-header bg-dark">
        <div class="d-flex">
            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="{{ route('dashboard') }}" class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="{{ asset('/') }}assets/images/logo.svg" alt="" height="22">
                                </span>
                    <span class="logo-lg">
                                    <img src="{{ asset('/') }}assets/images/logo-dark.png" alt="" height="17">
                                </span>
                </a>

                <a href="{{ route('dashboard') }}" class="logo logo-light">
                                <span class="logo-sm">
                                    <img src="{{ asset('/') }}assets/images/logo-light.svg" alt="" height="22">
                                </span>
                    <span class="logo-lg">
                                    <img src="{{ asset('/') }}assets/images/logo-light.png" alt="" height="19">
                                </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect" id="vertical-menu-btn">
                <i class="fa fa-fw fa-bars"></i>
            </button>

        </div>

        <div class="d-flex bg-dark">
            <div class="dropdown d-none d-lg-inline-block ml-1">
                <button type="button" class="btn header-item noti-icon waves-effect" data-toggle="fullscreen">
                    <i class="bx bx-fullscreen"></i>
                </button>
            </div>



            <div class="dropdown d-inline-block">
                <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="rounded-circle header-profile-user" src="{{ asset('/') }}assets/images/users/on.png"
                         alt="Header Avatar">
{{--                    <span class="d-none d-xl-inline-block ml-1">{{ Auth::user()->name }}</span>--}}
                    <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-right">
                    <!-- item-->


                    <a class="dropdown-item text-danger" onclick="event.preventDefault();document.getElementById('LogoutForm').submit();" href="#"><i class="bx bx-power-off font-size-16 align-middle mr-1 text-danger"></i> Logout</a>
                    <form action="{{ route('logout') }}" method="POST" id="LogoutForm">
                        @csrf
                    </form>
                </div>
            </div>
        </div>
    </div>
</header>
