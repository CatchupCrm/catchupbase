<section class="navigation">
    <header>
        <div class="header-content">
            <div class="logo">
                <a href="{{ url('') }}">
                    <img src="{{ get_image(get_settings('site_logo', 'themes/sedna/img/sedna-logo.png')) }}"
                         alt="Sedna logo">
                </a>
            </div>
            <div class="header-nav">
                {!! $cmsMenuHtml or '' !!}
            </div>
            <div class="navicon">
                <a class="nav-toggle" href="#"><span></span></a>
            </div>
        </div>
    </header>
</section>
