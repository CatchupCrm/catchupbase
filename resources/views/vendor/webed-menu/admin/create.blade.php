@extends('webed-core::admin._master')

@section('css')

@endsection

@section('js')
    @include('webed-menu::admin._components.nestable-script-renderer')
@endsection

@section('js-init')

@endsection

@section('content')
    <div class="layout-2columns sidebar-left">
        <div class="column left">
            @php do_action('meta_boxes', 'top-sidebar', 'menus.create', $object) @endphp
            <div class="box box-primary box-link-menus"
                 data-type="custom-link">
                <div class="box-header with-border">
                    <h3 class="box-title">
                        <i class="icon-layers font-dark"></i>
                        Custom link
                    </h3>
                    <div class="box-tools">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label class="control-label"><b>Title</b></label>
                        <input type="text" class="form-control" placeholder="" value="" name=""
                               data-field="title"
                               autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="control-label"><b>Url</b></label>
                        <input type="text" class="form-control" placeholder="" value="" name=""
                               data-field="url"
                               autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="control-label"><b>Css class</b></label>
                        <input type="text" class="form-control" placeholder="" value="" name=""
                               data-field="css_class"
                               autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="control-label"><b>Icon font class</b></label>
                        <input type="text" class="form-control" placeholder="" value="" name=""
                               data-field="icon_font"
                               autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="control-label"><b>Target type</b></label>
                        <select name="" class="form-control" data-field="target">
                            <option value="">Not set</option>
                            <option value="_self">Self</option>
                            <option value="_blank">Blank</option>
                            <option value="_parent">Parent</option>
                            <option value="_top">Top</option>
                        </select>
                    </div>
                </div>
                <div class="box-footer text-right">
                    <button class="btn btn-primary add-item"
                            type="submit">
                        <i class="fa fa-plus"></i> Add
                    </button>
                </div>
            </div>
            {!! menus_management()->renderWidgets() !!}
            @php do_action('meta_boxes', 'bottom-sidebar', 'menus.create', $object) @endphp
        </div>
        <div class="column main">
            {!! Form::open(['class' => 'js-validate-form', 'novalidate' => 'novalidate', 'url' => route('admin::menus.create.post')]) !!}
            <textarea name="menu_structure"
                      id="menu_structure"
                      class="hidden"
                      style="display: none;">{!! $menuStructure or '[]' !!}</textarea>
            <textarea name="deleted_nodes"
                      id="deleted_nodes"
                      class="hidden"
                      style="display: none;">[]</textarea>
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">
                        <i class="icon-layers font-dark"></i>
                        Edit menu
                    </h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label class="control-label">
                            <b>Title</b>
                            <span class="required">*</span>
                        </label>
                        <input required type="text" name="title"
                               class="form-control"
                               value="{{ $object->title or '' }}"
                               autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            <b>Alias</b>
                            <span class="required">*</span>
                        </label>
                        <input required type="text" name="slug"
                               class="form-control"
                               value="{{ $object->slug or '' }}"
                               autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            <b>Status</b>
                            <span class="required">*</span>
                        </label>
                        {!! form()->select('status', [
                            'activated' => 'Activated',
                            'disabled' => 'Disabled',
                        ], (isset($object->status) ? $object->status : ''), ['class' => 'form-control']) !!}
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            <b>Menu structure</b>
                        </label>
                        <div class="dd nestable-menu"></div>
                    </div>
                </div>
                <div class="box-footer text-right">
                    <button class="btn btn-primary"
                            type="submit">
                        <i class="fa fa-check"></i> Save
                    </button>
                    <button class="btn btn-success"
                            name="_continue_edit"
                            value="1"
                            type="submit">
                        <i class="fa fa-check"></i> Save & continue
                    </button>
                </div>
            </div>
            @php do_action('meta_boxes', 'main', 'menus.create', $object) @endphp
            {!! Form::close() !!}
        </div>
    </div>
@endsection
