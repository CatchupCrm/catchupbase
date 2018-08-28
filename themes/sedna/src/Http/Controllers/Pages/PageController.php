<?php namespace WebEd\Themes\Sedna\Http\Controllers\Pages;

use WebEd\Base\Pages\Models\Contracts\PageModelContract;
use WebEd\Base\Pages\Models\Page;
use WebEd\Base\Pages\Repositories\Contracts\PageContract;
use WebEd\Base\Pages\Repositories\PageRepository;
use WebEd\Themes\Sedna\Http\Controllers\AbstractController;

class PageController extends AbstractController
{
    protected $module = 'cosmetics';

    /**
     * @param PageRepository $repository
     */
    public function __construct(PageContract $repository)
    {
        parent::__construct();

        $this->repository = $repository;
    }

    /**
     * @param Page $item
     * @param array $data
     */
    public function handle(PageModelContract $item, array $data)
    {
        $this->dis = $data;

        $this->getMenu('page', $item->id);

        $happyMethod = '_template_' . studly_case($item->page_template);

        if (method_exists($this, $happyMethod)) {
            return $this->$happyMethod($item);
        }

        return $this->defaultTemplate($item);
    }

    /**
     * @param Page $page
     * @return mixed
     */
    protected function defaultTemplate(PageModelContract $page)
    {
        return $this->view('front.page-templates.default');
    }

    /**
     * @param Page $page
     * @return mixed
     */
    protected function _template_Homepage(PageModelContract $page)
    {
        return $this->view('front.page-templates.homepage');
    }
}
