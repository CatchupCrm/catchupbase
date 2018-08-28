@extends('webed-core::admin._master')

@section('css')

@endsection

@section('js')

@endsection

@section('js-init')

@endsection

@section('content')
    <div class="layout-1columns">
        <div class="column main">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">
                        <i class="icon-layers font-dark"></i>
                        Cache management
                    </h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <a href="{{ route('admin::webed-caching.clear-cms-cache.get') }}"
                           data-toggle="confirmation"
                           data-placement="right"
                           title="Are you sure?"
                           class="btn btn-danger">
                            Clear cms caching
                        </a>
                        <a href="{{ route('admin::webed-caching.refresh-compiled-views.get') }}"
                           data-toggle="confirmation"
                           data-placement="right"
                           title="Are you sure?"
                           class="btn btn-warning">
                            Refresh compiled views
                        </a>
                    </div>
                    <div class="form-group">
                        <a href="{{ route('admin::webed-caching.create-config-cache.get') }}"
                           data-toggle="confirmation"
                           data-placement="right"
                           title="Are you sure?"
                           class="btn green">
                            Create config cache
                        </a>
                        <a href="{{ route('admin::webed-caching.clear-config-cache.get') }}"
                           data-toggle="confirmation"
                           data-placement="right"
                           title="Are you sure?"
                           class="btn green-meadow">
                            Clear config cache
                        </a>
                    </div>
                    <div class="form-group">
                        <a href="{{ route('admin::webed-caching.optimize-class.get') }}"
                           data-toggle="confirmation"
                           data-placement="right"
                           title="Are you sure?"
                           class="btn purple">
                            Optimize class loader
                        </a>
                        <a href="{{ route('admin::webed-caching.clear-compiled-class.get') }}"
                           data-toggle="confirmation"
                           data-placement="right"
                           title="Are you sure?"
                           class="btn red-haze">
                            Clear compiled class loader
                        </a>
                    </div>
                    <div class="form-group hidden">
                        <a href="{{ route('admin::webed-caching.create-route-cache.get') }}"
                           data-toggle="confirmation"
                           data-placement="right"
                           title="Are you sure?"
                           class="btn yellow-crusta">
                            Create route cache
                        </a>
                        <a href="{{ route('admin::webed-caching.clear-route-cache.get') }}"
                           data-toggle="confirmation"
                           data-placement="right"
                           title="Are you sure?"
                           class="btn purple">
                            Clear route cache
                        </a>
                    </div>
                </div>
            </div>
            @php do_action('meta_boxes', 'main', 'webed-caching.index') @endphp
        </div>
    </div>
@endsection
