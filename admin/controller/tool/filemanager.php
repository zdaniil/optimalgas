<?php 
Class ControllertoolFilemanager extends Controller {
	private $error = array();
	private $ssl = 'SSL';

	public function __construct( $registry ) {
		parent::__construct( $registry );
		$this->ssl = (defined('VERSION') && version_compare(VERSION,'2.2.0.0','>=')) ? true : 'SSL';
	}

	public function index() {
		$this->load->language('tool/filemanager');
  
		$this->document->setTitle($this->language->get('heading_title'));
		  
		$this->document->addStyle('http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css');
		$this->document->addStyle('view/javascript/filemanager/css/elfinder.min.css');
		$this->document->addStyle('view/javascript/filemanager/css/theme.css');
		  
		$this->document->addScript('http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js');
		$this->document->addScript('view/javascript/filemanager/js/elfinder.min.js');
		$this->document->addScript('view/javascript/filemanager/js/i18n/elfinder.ru.js');
		
		$data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->session->data['error'])) {
			$data['error_warning'] = $this->session->data['error'];

			unset($this->session->data['error']);
		} elseif (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], $this->ssl)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('tool/error_log', 'token=' . $this->session->data['token'], $this->ssl)
		);

		$data['init_url'] = 'index.php?route=tool/filemanager/init&token=' . $this->session->data['token'];

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		
		$this->response->setOutput($this->load->view( ((version_compare(VERSION, '2.2.0.0') >= 0) ? 'tool/filemanager' : 'tool/filemanager.tpl'), $data));
	}

	public function init() {
		
		require_once(DIR_SYSTEM . 'library/tool/file_manager_lib.php');
	   
		$startPath = DIR_IMAGE;
		if(isset($_GET['startPath']) && !empty($_GET['startPath'])) {
			$startPath .= $_GET['startPath'];
		}
		
		$opts = array(
		'roots' => array(
		  array( 
			'driver' => 'LocalFileSystem', 
			'path'   => DIR_APPLICATION . '../', 
			'startPath' => $startPath,
			'URL'    => HTTP_CATALOG
		   ) 
		  )
		);
		$connector = new File_manager_lib($opts);
		exit;
	}

}