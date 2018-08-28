<script type="text/x-custom-template" id="menus_template_list_group">
    <ol class="dd-list"></ol>
</script>
<script type="text/x-custom-template" id="menus_template_list_item">
    <li class="dd-item dd3-item">
        <div class="dd-handle dd3-handle"></div>
        <div class="dd3-content">
            <span class="text pull-left">__title__</span>
            <span class="text pull-right">__type__</span>
            <a href="javascript:;" title="Toggle item details" class="show-item-details">
                <i class="fa fa-angle-down"></i>
            </a>
            <div class="clearfix"></div>
        </div>
        <div class="item-details">
            <div class="fields">
                <label data-field="title">
                    <span class="text">Title</span>
                    <input type="text" value="">
                </label>
                <label data-field="url">
                    <span class="text">Url</span>
                    <input type="text" value="">
                </label>
                <label data-field="css_class">
                    <span class="text">CSS class</span>
                    <input type="text" value="">
                </label>
                <label data-field="icon_font">
                    <span class="text">Icon - font</span>
                    <input type="text" value="">
                </label>
                <label data-field="target">
                    <span class="text">Target type</span>
                    <select>
                        <option value="">Not set</option>
                        <option value="_self">Self</option>
                        <option value="_blank">Blank</option>
                        <option value="_parent">Parent</option>
                        <option value="_top">Top</option>
                    </select>
                </label>
            </div>
            <div class="text-right">
                <a href="#" title="" class="btn red btn-remove btn-sm">Remove</a>
                <a href="#" title="" class="btn blue btn-cancel btn-sm">Cancel</a>
            </div>
        </div>
        <div class="clearfix"></div>
    </li>
</script>
