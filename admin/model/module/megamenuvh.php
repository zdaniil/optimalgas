<?php
class ModelModuleMegamenuvh extends Model {
	public function getWallCategories($parent_id = 0) {
		$category_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND c.top = '1' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY c.sort_order, cd.name ASC");

		foreach ($query->rows as $result) {
			$category_data[] = array(
				'category_id' => $result['category_id'],
				'name'        => $this->getPath($result['category_id'], $this->config->get('config_language_id')),
				'status'      => $result['status'],
				'sort_order'  => $result['sort_order']
				);

			$category_data = array_merge($category_data, $this->getWallCategories($result['category_id']));
		}

		return $category_data;
	}
	public function getPath($category_id) {
		$query = $this->db->query("SELECT name, parent_id FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY c.sort_order, cd.name ASC");

		if ($query->row['parent_id']) {
			return $this->getPath($query->row['parent_id'], $this->config->get('config_language_id')) . " / " . $query->row['name'];
		} else {
			return $query->row['name'];
		}
	}
	public function saveSetting($data) {
		$store_id = 0;			
		$code = 'megamenuvh';					
		$this->db->query("DELETE FROM `" . DB_PREFIX . "setting` WHERE store_id = '". $store_id ."' AND `code` = '". $code ."'");
		
		foreach ($data as $key => $value) {
			if (!is_array($value)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '0', `code` = '" . $this->db->escape($code) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($value) . "'");
				} else {
				$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '0', `code` = '" . $this->db->escape($code) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape(json_encode($value)) . "', serialized = '1'");
				}	
			}
	}
	
	
	
}