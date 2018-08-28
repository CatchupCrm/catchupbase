<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="footer-links">
                    {!! $cmsFooterMenuHtml or '' !!}
                    <p>
                        Copyright © 2015 <a href="#">Sedna</a>
                        <br>
                        <a href="http://tympanus.net/codrops/licensing/">Licence</a> | Crafted with <span
                                class="fa fa-heart pulse2"></span> by <a href="http://www.peterfinlan.com/">Peter
                            Finlan</a>.
                    </p>
                </div>
            </div>
            <div class="social-share">
                <p>Share WebEd with your friends</p>
                <a href="{{ get_settings('twitter') }}" class="twitter-share">
                    <i class="fa fa-twitter"></i>
                </a>
                <a href="{{ get_settings('facebook') }}" class="facebook-share">
                    <i class="fa fa-facebook"></i>
                </a>
            </div>
        </div>
    </div>
</footer>