<div class="col-lg-3 col-md-4 col-sm-6">
    <div class="small-box bg-yellow">
        <div class="inner">
            <h3>{{ $count or 0 }}</h3>
            <p>Users</p>
        </div>
        <div class="icon">
            <i class="icon-users"></i>
        </div>
        <a href="{{ route('admin::users.index.get') }}" class="small-box-footer">
            More info <i class="fa fa-arrow-circle-right"></i>
        </a>
    </div>
</div>
