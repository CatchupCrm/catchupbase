<?php namespace WebEd\Themes\Sedna\Http\Controllers;

use WebEd\Base\Core\Http\Controllers\BaseFrontController;

abstract class AbstractController extends BaseFrontController
{
    public function __construct()
    {
        parent::__construct();
        $this->getFooterMenu();
    }

    protected function getFooterMenu()
    {
        $menuHtml = webed_menu_render('footer-menu', [
            'class' => 'footer-group',
            'container_class' => '',
            'has_sub_class' => 'dropdown',
            'container_tag' => null,
            'container_id' => '',
            'group_tag' => 'ul',
            'child_tag' => 'li',
            'submenu_class' => 'sub-menu',
            'active_class' => 'active current-menu-item',
        ]);
        view()->share([
            'cmsFooterMenuHtml' => $menuHtml
        ]);
        return $menuHtml;
    }

    /**
     * Override some menu attributes
     *
     * @param $type
     * @param $relatedId
     * @return null|string|mixed
     */
    protected function getMenu($type, $relatedId)
    {
        $menuHtml = webed_menu_render(get_settings('main_menu', 'main-menu'), [
            'class' => 'primary-nav',
            'container_class' => '',
            'has_sub_class' => 'dropdown',
            'container_tag' => 'nav',
            'container_id' => '',
            'group_tag' => 'ul',
            'child_tag' => 'li',
            'submenu_class' => 'sub-menu',
            'active_class' => 'active current-menu-item',
            'menu_active' => [
                'type' => $type,
                'related_id' => $relatedId,
            ]
        ]);
        view()->share([
            'cmsMenuHtml' => $menuHtml
        ]);
        return $menuHtml;
    }
}
