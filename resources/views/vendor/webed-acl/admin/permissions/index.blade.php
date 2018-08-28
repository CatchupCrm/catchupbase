@extends('webed-core::admin._master')

@section('css')

@endsection

@section('js')

@endsection

@section('js-init')

@endsection

@section('content')
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">
                <i class="icon-layers font-dark"></i>
                All permissions
            </h3>
        </div>
        <div class="box-body">
            {!! $dataTable or '' !!}
        </div>
    </div>
    @php do_action('meta_boxes', 'main', 'acl-permissions.index') @endphp
@endsection
