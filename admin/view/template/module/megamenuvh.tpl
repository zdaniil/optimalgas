<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right" id="buttons-apply">
	  <a onclick="apply_btn()" class="btn btn-save" data-toggle="tooltip" title="<?php echo $text_btn_apply;?>" data-placement="bottom"><i class="fa fa-check"></i></a>
        <button type="submit" form="form-megamenuvh" data-placement="bottom" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-placement="bottom" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
<script type="text/javascript">
var loading_img_qvp = '<img src="view/stylesheet/loading_quickview_pro.svg" />';
function creatOverlayLoadPage(action) {
	if (action) {
		$('#loading_megamenu').html(loading_img_qvp);
		$('#loading_megamenu').show();
	} else {
		$('#loading_megamenu').html('');
		$('#loading_megamenu').hide();
	}
}
	$(window).scroll(function(){
		if ($(window).scrollTop() > 100){
			$("#buttons-apply").addClass("fixed-btn-top");
		} else {
			$("#buttons-apply").removeClass("fixed-btn-top");
		}
	});
function apply_btn(){
	$(".alert").remove();
	$.post($("#form-megamenuvh").attr('action'), $("#form-megamenuvh").serialize(), function(html) {
			var $success = $(html).find(".alert-success, .alert-danger");
			if ($success.length > 0) {
				$(".panel.panel-default").before($success);
			}
		});
	}
</script> 
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-megamenuvh" class="form-horizontal">
			<div class="form-group">
				<div class="col-sm-12 title-setting"><?php echo $tab_menu_general;?></div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label" for="input-megamenu-status"><?php echo $entry_megamenu_status; ?></label>
				<div class="col-sm-9">
					<select name="config_megamenu_status" id="input-megamenu-status" class="form-control">
						<?php if ($config_megamenu_status) { ?>
							<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
							<option value="0"><?php echo $text_disabled; ?></option>
						<?php } else { ?>
							<option value="1"><?php echo $text_enabled; ?></option>
							<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
						<?php } ?>					
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label" for="input-menu-selection"><?php echo $entry_menu_selection; ?></label>
				<div class="col-sm-9">
					<select onchange="change_menu_theme(this.value);" name="config_main_menu_selection" id="input-menu-selection" class="form-control">
						<?php if ($config_main_menu_selection =='1') { ?>
							<option value="1" selected="selected"><?php echo $text_main_vertical_menu; ?></option>
							<option value="0"><?php echo $text_main_horizontal_menu; ?></option>
						<?php } else{ ?>
							<option value="0" selected="selected"><?php echo $text_main_horizontal_menu; ?></option>
							<option value="1"><?php echo $text_main_vertical_menu; ?></option>                  
						<?php } ?>					
					</select>
				</div>
			</div>
			<script>
			$(window).load(function(){ 
				var config_main_menu_selection = $('#input-menu-selection option:selected').val();	
				console.log(config_main_menu_selection);		
				if (config_main_menu_selection =='1') {
					$('.menu_always_open').toggleClass('active');
					$('.additional_menu').toggleClass('active');
					$('.horizontal_menu').removeClass('active');
					$('.fixed-panel-top').removeClass('active');
				} else if (config_main_menu_selection =='0') {
					$('.menu_always_open').removeClass('active');
					$('.additional_menu').removeClass('active');
					$('.horizontal_menu').toggleClass('active');
					$('.fixed-panel-top').toggleClass('active');
				}
			})
			function change_menu_theme(config_main_menu_selection){						
				if (config_main_menu_selection =='1') {
					$('.menu_always_open').addClass('active');
					$('.additional_menu').addClass('active');
					$('.horizontal_menu').removeClass('active');
					$('.fixed-panel-top').removeClass('active');
				} else if (config_main_menu_selection =='0') {
					$('.menu_always_open').removeClass('active');
					$('.additional_menu').removeClass('active');
					$('.horizontal_menu').toggleClass('active');
					$('.fixed-panel-top').toggleClass('active');
				}
			}
			</script>
			<div class="form-group fixed-panel-top">
				<label class="col-sm-3 control-label" for="input-fixed-panel-top"><?php echo $entry_fixed_panel_top; ?></label>
				<div class="col-sm-9">
					<select name="config_fixed_panel_top" id="input-fixed-panel-top" class="form-control">
						<?php if ($config_fixed_panel_top) { ?>
							<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
							<option value="0"><?php echo $text_disabled; ?></option>
						<?php } else { ?>
							<option value="1"><?php echo $text_enabled; ?></option>
							<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
						<?php } ?>
					</select>
				</div>
			</div>
			<div class="form-group horizontal_menu">
				<label class="col-sm-3 control-label"><?php echo $text_main_horizontal_menu;?></label>
				<div class="col-sm-9">
					<select name="horizontal_menu_width_setting" id="input-horizontal-menu-width-setting" class="form-control">
						<?php if ($horizontal_menu_width_setting) { ?>
							<option value="1" selected="selected"><?php echo $text_full_screen_menu; ?></option>
							<option value="0"><?php echo $text_full_screen_layout ?></option>
						<?php } else { ?>
							<option value="1"><?php echo $text_full_screen_menu; ?></option>
							<option value="0" selected="selected"><?php echo $text_full_screen_layout; ?></option>
						<?php } ?>
					</select>
				</div>
			</div>	
			<div class="form-group menu_always_open">
				<label class="col-sm-3 control-label"><?php echo $text_home_page;?></label>
				<div class="col-sm-5">
					<label class="radio-inline">
						<?php if ($config_menu_always_open_on_the_left) { ?>
							<input type="radio" name="config_menu_always_open_on_the_left" value="1" checked="checked" />
							<?php echo $text_yes; ?>
						<?php } else { ?>
							<input type="radio" name="config_menu_always_open_on_the_left" value="1" />
							<?php echo $text_yes; ?>
						<?php } ?>
					</label>
					<label class="radio-inline">
						<?php if (!$config_menu_always_open_on_the_left) { ?>
							<input type="radio" name="config_menu_always_open_on_the_left" value="0" checked="checked" />
							<?php echo $text_no; ?>
						<?php } else { ?>
							<input type="radio" name="config_menu_always_open_on_the_left" value="0" />
							<?php echo $text_no; ?>
						<?php } ?>
					</label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12 title-setting"><?php echo $ns_text_setting_general_menu;?></div>
			</div>
			<div class="form-group">
				<div class="col-sm-3"><i class="fa fa-exclamation-triangle required_cat"></i> <?php echo $text_category_add_auto_description;?></div>
				<div class="col-sm-9 title-setting"><a class="btn btn-save" id="autocategoryadd"><?php echo $text_category_add_auto;?></a></div>
			</div>
<script type="text/javascript">
$('#autocategoryadd').bind('click',function() {
$('body').prepend('<div id="loading_megamenu"></div>');
$('#content').addClass('mfp-bg-megamenu');
creatOverlayLoadPage(true); 
				var autocategoryadd = 1;
				var success = 'false';				
					$.ajax({
						type:'get',
						dataType:'json',
						data:'autocategoryadd=' + autocategoryadd,
						url:'index.php?route=module/megamenuvh/autocategoryadd&token=<?php echo $token; ?>',							
						success: function(json){
							if (json['success']) {
							creatOverlayLoadPage(false); 
							$('#content').removeClass('mfp-bg-megamenu');
							$('#loading_megamenu').hide();
								location.reload(); 
							}	
						}
					});				
			
			});
</script>
			<div class="row">
				<?php $menu_item_row = 0; ?>
				<div id="ns-left-block-menu" class="col-lg-3 col-md-4 vtabs">
					<ul class="nav nav-pills nav-stacked"> 
						<?php foreach ($config_menu_items as $config_menu_item) { ?>				
							<li id="menu-item-<?php echo $menu_item_row; ?>">
								<a data-toggle="tab" class="btn btn-primary menu-tab-link" href="#tab-menu-item-<?php echo $menu_item_row; ?>" >
									<?php  echo $config_menu_item['namemenu'][$lang_id]; ?>
									<i class="fa fa-minus-circle remove_menu_item" onclick="$('#menu-item-<?php echo $menu_item_row; ?>').remove(); $('#tab-menu-item-<?php echo $menu_item_row; ?>').remove(); $('a[href=\'#tab-menu-item-0\']').trigger('click'); return false;"></i> 
								</a>
							</li>
						<?php $menu_item_row++; ?>
						<?php } ?>
							<li id="addMenuItem"><a class="btn btn-primary" onclick="addItemCategoryBanner();" title="<?php echo $text_add; ?>"><?php echo $text_add; ?> <i class="fa fa-plus-circle"></i> </a></li>
					</ul>
				</div>
				<?php $menu_item_row = 0; ?>
			<div id="ns-right-block-menu" class="col-lg-9 col-md-8" style="margin-bottom:50px;padding-bottom:10px; border-bottom:1px solid #ccc;">
				<div class="tab-content banner-category">
					<?php foreach ($config_menu_items as $config_menu_item) { ?>
						<div class="tab-pane" id="tab-menu-item-<?php echo $menu_item_row; ?>">		
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab-menu-setting-<?php echo $menu_item_row; ?>" data-toggle="tab"><?php echo $ns_tab_menu_setting ?></a></li> 
								<li  class="show_elements_<?php echo $menu_item_row; ?> show_elements_category_<?php echo $menu_item_row; ?>"><a href="#tab-category-<?php echo $menu_item_row; ?>_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li>
								<li  class="show_elements_<?php echo $menu_item_row; ?> show_elements_manufacturer_<?php echo $menu_item_row; ?>"><a href="#tab-manufacturer-<?php echo $menu_item_row; ?>_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li> 								
								<li  class="show_elements_<?php echo $menu_item_row; ?> show_elements_information_<?php echo $menu_item_row; ?>"><a href="#tab-information-<?php echo $menu_item_row; ?>_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li> 								
								<li  class="show_elements_<?php echo $menu_item_row; ?> show_elements_product_<?php echo $menu_item_row; ?>"><a href="#tab-product-<?php echo $menu_item_row; ?>_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li> 								
								<li  class="show_elements_<?php echo $menu_item_row; ?> show_elements_link_<?php echo $menu_item_row; ?>"><a href="#tab-link-<?php echo $menu_item_row; ?>_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li> 																
								<li  class="show_elements_<?php echo $menu_item_row; ?> show_elements_html_<?php echo $menu_item_row; ?>"><a href="#tab-html-<?php echo $menu_item_row; ?>_options" data-toggle="tab"><?php echo $ns_tab_html; ?></a></li> 
								<li  class="show_elements_<?php echo $menu_item_row; ?> show_elements_add_html_<?php echo $menu_item_row; ?>"><a href="#tab-add-<?php echo $menu_item_row; ?>-html" data-toggle="tab"><?php echo $ns_tab_add_html; ?></a></li> 
							</ul>	
							<div class="tab-content">
								<div class="tab-pane active in" id="tab-menu-setting-<?php echo $menu_item_row; ?>">					
									<div class="form-group required">
										<label class="col-sm-3 control-label"><?php echo $ns_text_menu_name;?></label>
										<div class="col-sm-5">
											<?php foreach ($languages as $language) { ?>
												<div class="input-group pull-left">
													<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
													<input id="namemenu_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>" onChange="change_name_menu('<?php echo $menu_item_row; ?>', '<?php echo $language['language_id']; ?>')" class="form-control" type="text" name="config_menu_item[<?php echo $menu_item_row; ?>][namemenu][<?php echo $language['language_id']; ?>]" value="<?php echo $config_menu_item['namemenu'][$language['language_id']]; ?>" />
												</div>
											<?php } ?>
										</div>
									</div>
									<div class="form-group additional_menu">
										<label class="col-sm-3 control-label" for="input-additional-menu"><?php echo $ns_text_additional_menu; ?></label>
										<div class="col-sm-5">
											<select name="config_menu_item[<?php echo $menu_item_row; ?>][additional_menu]" id="input-status-additional-menu" class="form-control">
												<?php if ($config_menu_item['additional_menu'] =='additional') { ?>
													<option value="additional" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="left"><?php echo $text_disabled; ?></option>
												<?php } else { ?>
													<option value="additional"><?php echo $text_enabled; ?></option>
													<option value="left" selected="selected"><?php echo $text_disabled; ?></option>
												<?php } ?>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"><?php echo $ns_text_menu_link;?></label>
										<div class="col-sm-5">
											<input class="form-control" type="text" name="config_menu_item[<?php echo $menu_item_row; ?>][link]" value="<?php echo $config_menu_item['link']; ?>" />
										</div>
									</div>
									<div class="form-group required">
										<label class="col-sm-3 control-label"><?php echo $ns_text_type;?></label>
										<div class="col-sm-5">
											<select onChange="sel_type_category('<?php echo $menu_item_row; ?>')"  name="config_menu_item[<?php echo $menu_item_row; ?>][menu_type]" id="input-menu_type_<?php echo $menu_item_row; ?>" class="form-control">											
												<option value="category" <?php if($config_menu_item['menu_type']=="category") { ?> selected="selected" <?php } ?>><?php echo $ns_text_type_category; ?></option>
												<option value="html" <?php if($config_menu_item['menu_type']=="html") { ?> selected="selected" <?php } ?>><?php echo $ns_text_type_html; ?></option>
												<option value="manufacturer" <?php if($config_menu_item['menu_type']=="manufacturer") {?> selected="selected" <?php } ?>><?php echo $ns_text_type_manufacturer; ?></option>
												<option value="information" <?php if($config_menu_item['menu_type']=="information") {?> selected="selected" <?php } ?>><?php echo $ns_text_type_information; ?></option>
												<option value="product" <?php if($config_menu_item['menu_type']=="product") { ?> selected="selected" <?php } ?>><?php echo $ns_text_type_product; ?></option>											
												<option value="link" <?php if($config_menu_item['menu_type']=="link") { ?> selected="selected" <?php } ?>><?php echo $ns_text_type_link; ?></option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-status"><?php echo $ns_text_status; ?></label>
										<div class="col-sm-5">
											<select name="config_menu_item[<?php echo $menu_item_row; ?>][status]" id="input-status" class="form-control">
												<?php if ($config_menu_item['status']) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
												<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
												<?php } ?>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-status"><?php echo $ns_text_sticker_parent; ?></label>
										<div class="col-sm-5">
											<select class="form-control" name="config_menu_item[<?php echo $menu_item_row; ?>][sticker_parent]">
												<option value="0"><?php echo $ns_text_select_sticker;?></option>					
												<option value="new" <?php if($config_menu_item['sticker_parent'] =='new'){?> selected="selected" <?php } ?>><?php echo "NEW";?></option>
												<option value="top" <?php if($config_menu_item['sticker_parent'] =='top'){?> selected="selected" <?php } ?>><?php echo "TOP";?></option>
												<option value="sale" <?php if($config_menu_item['sticker_parent'] =='sale'){?> selected="selected" <?php } ?>><?php echo "SALE";?></option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"><?php echo $ns_text_sort_menu;?></label>
										<div class="col-sm-5">
											<input class="form-control" type="text" name="config_menu_item[<?php echo $menu_item_row; ?>][sort_menu]" value="<?php echo $config_menu_item['sort_menu']; ?>" />
										</div>
									</div>	
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-image"><?php echo $ns_text_thumb; ?></label>
										<div class="col-sm-5">
											<a href="" id="thumb-image<?php echo $menu_item_row; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $config_menu_item['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
											<input type="hidden" name="config_menu_item[<?php echo $menu_item_row; ?>][image]" value="<?php echo $config_menu_item['image']; ?>" id="input-image<?php echo $menu_item_row; ?>" />
										</div>								
									</div>								
								</div>
									
								<div class="tab-pane fade" id="tab-category-<?php echo $menu_item_row; ?>_options">			
									<div class="form-group required">
										<label class="col-sm-4 control-label" for="input_variant_category_<?php echo $menu_item_row; ?>"><?php echo $ns_type_dropdown_list; ?></label>
										<div class="col-sm-6">
											<select onChange="sel_type_category('<?php echo $menu_item_row; ?>')" name="config_menu_item[<?php echo $menu_item_row; ?>][variant_category]" id="input_variant_category_<?php echo $menu_item_row; ?>" class="form-control">
												<option value="simple" <?php if($config_menu_item['variant_category']=="simple") { ?> selected="selected" <?php } ?>><?php echo $ns_type_dropdown_simple; ?></option>
												<option value="full" <?php if($config_menu_item['variant_category']=="full") { ?> selected="selected" <?php } ?>><?php echo $ns_type_dropdown_full; ?></option>
												<option value="full_image" <?php if($config_menu_item['variant_category']=="full_image") { ?> selected="selected" <?php } ?>><?php echo $ns_type_dropdown_full_image; ?></option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4 control-label" for="input-category_show_subcategory"><?php echo $ns_show_sub_categories; ?></label>
										<div class="col-sm-6">
											<select id="input-category_show_subcategory" name="config_menu_item[<?php echo $menu_item_row; ?>][show_sub_category]" class="form-control">
												<?php if ($config_menu_item['show_sub_category']) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
												<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
												<?php } ?>
											</select>										
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4 control-label"><?php echo $ns_text_product_width; ?></label>
										<div class="col-sm-6">
											<input type="text" name="config_menu_item[<?php echo $menu_item_row; ?>][category_img_width]" value="<?=isset($config_menu_item['category_img_height'])?$config_menu_item['category_img_height']:50?>" placeholder="<?php echo $ns_text_product_width; ?>" class="form-control" />									 
										</div>
									</div>		
									<div class="form-group">
										<label class="col-sm-4 control-label"><?php echo $ns_text_product_height; ?></label>
										<div class="col-sm-6">
											<input type="text" name="config_menu_item[<?php echo $menu_item_row; ?>][category_img_height]" value="<?=isset($config_menu_item['category_img_height'])?$config_menu_item['category_img_height']:50?>" placeholder="<?php echo $ns_text_product_height; ?>" class="form-control" />									 
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-category-<?php echo $menu_item_row; ?>"><?php echo $ns_text_category; ?></label>
										<div class="col-sm-10">
											<input type="text" name="category" value="" placeholder="<?php echo $ns_text_category; ?>" id="input-category-<?php echo $menu_item_row; ?>" class="form-control" />
											<div id="category-category-<?php echo $menu_item_row; ?>" class="well well-sm" style="height: 450px; overflow: auto;">
												<?php if(!empty($config_menu_item['category_list_sel'])) { ?>
													<?php foreach ($config_menu_item['category_list_sel'] as $category_list) { ?>
														<div class="row-category-menu" id="category-item-<?php echo $menu_item_row; ?>-<?php echo $category_list['category_id']; ?>">
															<i class="btn btn-danger fa fa-trash-o fa-lg"></i>
															<input class="form-control input-sort-category" size="3" type="text" name="config_menu_item[<?php echo $menu_item_row; ?>][sort_category][<?php echo $category_list['category_id']; ?>]" value="<?php echo $sort_category[$menu_item_row][$category_list['category_id']]?>"/>
															<select class="input-sticker-category" name="config_menu_item[<?php echo $menu_item_row; ?>][sticker][<?php echo $category_list['category_id']; ?>]">
																<option value="0"><?php echo $ns_text_select_sticker;?></option>					
																<option value="new" <?php if(isset($sticker_list_new[$menu_item_row][$category_list['category_id']])){?> selected="selected" <?php } ?>><?php echo "NEW";?></option>
																<option value="top" <?php if(isset($sticker_list_top[$menu_item_row][$category_list['category_id']])){?> selected="selected" <?php } ?>><?php echo "TOP";?></option>
																<option value="sale" <?php if(isset($sticker_list_sale[$menu_item_row][$category_list['category_id']])){?> selected="selected" <?php } ?>><?php echo "SALE";?></option>
															</select>
															<?php echo $category_list['name']; ?>
															<input type="hidden" name="config_menu_item[<?php echo $menu_item_row; ?>][category_list][]" value="<?php echo $category_list['category_id']; ?>" />
														</div>
													<?php } ?>	
												<?php } ?>	
											</div>
										</div>
									</div>							
								</div>
									
								<div class="tab-pane fade" id="tab-html-<?php echo $menu_item_row; ?>_options">
									<ul class="nav nav-tabs" id="language_html_<?php echo $menu_item_row; ?>">
										<?php foreach ($languages as $language) { ?>
											<li><a href="#language_html_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
										<?php } ?>
									</ul>
									<div class="tab-content">
										<?php foreach ($languages as $language) { ?>
											<div class="tab-pane" id="language_html_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>">
												<div class="form-group required">
													<label class="col-sm-2 control-label" for="html_description_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>"><?php echo $ns_text_html_description; ?></label>
													<div class="col-sm-10">
														<textarea name="config_menu_item[<?php echo $menu_item_row; ?>][html_block][<?php echo $language['language_id']; ?>]" id="html_description_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>"><?php echo isset($config_menu_item['html_block'][$language['language_id']]) ? $config_menu_item['html_block'][$language['language_id']] : ''; ?></textarea>
													</div>
												</div>
											</div>
										<?php } ?>
									</div>	
								</div>
									
								<div class="tab-pane fade" id="tab-manufacturer-<?php echo $menu_item_row; ?>_options">
									<div class="form-group">
										<label class="col-sm-2 control-label"><?php echo $ns_text_manufacturer; ?></label>
										<div class="col-sm-10">
											<div class="well well-sm">
												<?php foreach($manufacturers_list as $manufacturer){?>
													<div class="checkbox">
														<label>
															<input type="checkbox" name="config_menu_item[<?php echo $menu_item_row; ?>][manufacturers_list][]" <?php if(isset($manufacturers_list_selected[$menu_item_row][$manufacturer['manufacturer_id']])){?> checked="checked" <?php } ?> value="<?php echo $manufacturer['manufacturer_id']?>"/> <?php echo $manufacturer['name']?> 
														</label>
													</div>
												<?php } ?>
											</div>
										</div>
									</div>	
								</div>
								<div class="tab-pane fade" id="tab-information-<?php echo $menu_item_row; ?>_options">
									<div class="form-group">
										<label class="col-sm-2 control-label"><?php echo $ns_text_information; ?></label>
										<div class="col-sm-10">
											<div class="well well-sm">
												<?php foreach($informations_list as $information){ ?>
													<div class="checkbox">
														<label>
															<input type="checkbox" name="config_menu_item[<?php echo $menu_item_row; ?>][informations_list][]" <?php if(isset($informations_list_selected[$menu_item_row][$information['information_id']])){?> checked="checked" <?php } ?> value="<?php echo $information['information_id'];?>"/> <?php echo $information['title'];?> 
														</label>
													</div>
												<?php } ?>                
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab-product-<?php echo $menu_item_row; ?>_options">
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-product_width"><?php echo $ns_text_product_width; ?></label>
										<div class="col-sm-10">
											<input type="text" name="config_menu_item[<?php echo $menu_item_row; ?>][product_width]" value="<?=isset($config_menu_item['product_width'])?$config_menu_item['product_width']:50?>" placeholder="<?php echo $ns_text_product_width; ?>" id="input-product_width" class="form-control" />									 
										</div>
									</div>		
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-product_height"><?php echo $ns_text_product_height; ?></label>
										<div class="col-sm-10">
											<input type="text" name="config_menu_item[<?php echo $menu_item_row; ?>][product_height]" value="<?=isset($config_menu_item['product_height'])?$config_menu_item['product_width']:50?>" placeholder="<?php echo $ns_text_product_height; ?>" id="input-product_height" class="form-control" />									 
										</div>
									</div>		
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-product-<?php echo $menu_item_row; ?>"><?php echo $ns_text_product; ?></label>
										<div class="col-sm-10">
											<input type="text" name="product" value="" placeholder="<?php echo $ns_text_product; ?>" id="input-product-<?php echo $menu_item_row; ?>" class="form-control" />
											<div id="product-product-<?php echo $menu_item_row; ?>" class="well well-sm" style="height: 450px; overflow: auto;">
												<?php if(!empty($config_menu_item['products_list_sel'])) { ?>
													<?php foreach ($config_menu_item['products_list_sel'] as $products_list) { ?>
													<div id="product-item-<?php echo $menu_item_row; ?>-<?php echo $products_list['product_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $products_list['name']; ?>
														<input type="hidden" name="config_menu_item[<?php echo $menu_item_row; ?>][products_list][]" value="<?php echo $products_list['product_id']; ?>" />
													</div>
													<?php } ?>
												<?php } ?>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab-link-<?php echo $menu_item_row; ?>_options">
									<div class="tab-content">
										<div class="col-sm-3"><?php echo $ns_text_link_options; ?></div>
										<div class="col-sm-9">
											<select id="input-use_target_blank" name="config_menu_item[<?php echo $menu_item_row; ?>][use_target_blank]" class="form-control">
												<?php if ($config_menu_item['use_target_blank']) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
												<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
												<?php } ?>
											</select>
										</div>
									</div>
								</div>	
								<div class="tab-pane fade" id="tab-add-<?php echo $menu_item_row; ?>-html">
									<div class="form-group">
										<label class="col-sm-4 control-label" for="input_use_html_category"><?php echo $ns_text_add_html; ?></label>
										<div class="col-sm-8">
											<select id="input_use_html_category" name="config_menu_item[<?php echo $menu_item_row; ?>][use_add_html]" class="form-control">
												<?php if ($config_menu_item['use_add_html']) { ?>
												<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
												<option value="0"><?php echo $text_disabled; ?></option>
												<?php } else { ?>
												<option value="1"><?php echo $text_enabled; ?></option>
												<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
												<?php } ?>
											</select>								
										</div>
									</div>
									<ul class="nav nav-tabs" id="language_add_html_<?php echo $menu_item_row; ?>">
										<?php foreach ($languages as $language) { ?>
											<li><a href="#language_add_html_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
										<?php } ?>
									</ul>
									<div class="tab-content">							
										<?php foreach ($languages as $language) { ?>
											<div class="tab-pane" id="language_add_html_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>">
												<div class="form-group required">
													<label class="col-sm-2 control-label" for="input_add_html_description_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>"><?php echo $ns_text_html_description; ?></label>
													<div class="col-sm-10">
														<textarea name="config_menu_item[<?php echo $menu_item_row; ?>][add_html][<?php echo $language['language_id']; ?>]" id="input_add_html_description_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>"><?php echo isset($config_menu_item['add_html'][$language['language_id']]) ? $config_menu_item['add_html'][$language['language_id']] : ''; ?></textarea>
													</div>
												</div>
											</div>
										<?php } ?>
									</div>
								</div>
									<!--END TABS MENU-->
							</div>
						</div>
			<script>
			$(document).ready(function() {	
				sel_type_category('<?php echo $menu_item_row; ?>');
				$('#language_add_html_<?php echo $menu_item_row; ?> a:first').tab('show');
				$('#language_html_<?php echo $menu_item_row; ?> a:first').tab('show');
			});

			$('#input-category-<?php echo $menu_item_row; ?>').autocomplete({
				'source': function(request, response) {
					$.ajax({
						url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
						dataType: 'json',
						success: function(json) {				
							response($.map(json, function(item) {
								return {
									label: item['name'],
									value: item['category_id']
								}
							}));
						}
					});
				},
				'select': function(item) {
					$('#input-category-<?php echo $menu_item_row; ?>').val('');		
					$('#category-item-<?php echo $menu_item_row; ?>-' + item['value']).remove();	
					cathtml1  = '<div class="row-category-menu" id="category-item-<?php echo $menu_item_row; ?>' + item['value'] + '">';
					cathtml1 += '<i class="btn btn-danger fa fa-minus-circle"></i> ';
					cathtml1 += '<input class="form-control input-sort-category" size="3" type="text" name="config_menu_item[<?php echo $menu_item_row; ?>][sort_category][' + item['value'] + ']" value="0"/>';
					cathtml1 += '<select class="input-sticker-category" name="config_menu_item[<?php echo $menu_item_row; ?>][sticker][' + item['value'] + ']">';
					cathtml1 += '	<option value="0"><?php echo $ns_text_select_sticker;?></option>';					
					cathtml1 += '	<option value="new"><?php echo "NEW";?></option>';
					cathtml1 += '	<option value="top"><?php echo "TOP";?></option>';
					cathtml1 += '	<option value="sale"><?php echo "SALE";?></option>';
					cathtml1 += '</select>';
					cathtml1 += '<span>'+item['label']+'</span>';		
					cathtml1 += '<input type="hidden" name="config_menu_item[<?php echo $menu_item_row; ?>][category_list][]" value="' + item['value'] + '" /></div>';
					
					$('#category-category-<?php echo $menu_item_row; ?>').append(cathtml1);	
				}
			});
			$('#category-category-<?php echo $menu_item_row; ?>').delegate('.fa-minus-circle', 'click', function() {
				$(this).parent().remove();
			});

			$('#input-product-<?php echo $menu_item_row; ?>').autocomplete({
				'source': function(request, response) {
					$.ajax({
						url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
						dataType: 'json',
						success: function(json) {
							response($.map(json, function(item) {
								return {
									label: item['name'],
									value: item['product_id']
								}
							}));
						}
					});
				},
				'select': function(item) {
					$('#input-product-<?php echo $menu_item_row; ?>').val('');		
					$('#product-item-<?php echo $menu_item_row; ?>' + item['value']).remove();		
					$('#product-product-<?php echo $menu_item_row; ?>').append('<div id="product-item-<?php echo $menu_item_row; ?>' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="config_menu_item[<?php echo $menu_item_row; ?>][products_list][]" value="' + item['value'] + '" /></div>');	
				}
			});
			$('#product-product-<?php echo $menu_item_row; ?>').delegate('.fa-minus-circle', 'click', function() {
				$(this).parent().remove();
			});
			<?php foreach ($languages as $language) { ?>
				$('#html_description_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>').summernote({height: 200});
				$('#language_html_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?> .note-editable').on("blur", function(){
					$('textarea[name="config_menu_item[<?php echo $menu_item_row; ?>][html_block][<?php echo $language['language_id']; ?>]"]').html($('#language_html_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?> .note-editable').code());
				});
				$('#input_add_html_description_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?>').summernote({height: 200});
				$('#language_add_html_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?> .note-editable').on("blur", function(){
					$('textarea[name="config_menu_item[<?php echo $menu_item_row; ?>][add_html][<?php echo $language['language_id']; ?>]"]').html($('#language_add_html_<?php echo $menu_item_row; ?>_<?php echo $language['language_id']; ?> .note-editable').code());
				});
			<?php } ?>
			</script>
						<?php $menu_item_row++; ?>
						<?php } ?>
				</div>
			</div>												
			<script type="text/javascript">
			$('a[href=\'#tab-menu-item-0\']').trigger('click');
			var menu_item_row = <?php echo $menu_item_row; ?>;

			function addItemCategoryBanner() {
				html  = '<div class="tab-pane" id="tab-menu-item-' + menu_item_row + '">';
				html +='<ul class="nav nav-tabs">';
				html +='	<li class="active"><a href="#tab-menu-setting-'+ menu_item_row +'" data-toggle="tab"><?php echo $ns_tab_menu_setting; ?></a></li>';
				html +='	<li  class="show_elements_' + menu_item_row +' show_elements_category_'+ menu_item_row +'"><a href="#tab-category-'+ menu_item_row +'_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li> ';
				html +='	<li  class="show_elements_'+ menu_item_row +' show_elements_manufacturer_'+ menu_item_row +'"><a href="#tab-manufacturer-'+ menu_item_row +'_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li>'; 								
				html +='	<li  class="show_elements_'+ menu_item_row +' show_elements_information_'+ menu_item_row +'"><a href="#tab-information-'+ menu_item_row +'_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li>'; 								
				html +='	<li  class="show_elements_'+ menu_item_row +' show_elements_product_'+ menu_item_row +'"><a href="#tab-product-'+ menu_item_row +'_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li>'; 
				html +='	<li  class="show_elements_'+ menu_item_row +' show_elements_link_'+ menu_item_row +'"><a href="#tab-link-'+ menu_item_row +'_options" data-toggle="tab"><?php echo $ns_tab_options; ?></a></li>'; 
				
				html +='	<li  class="show_elements_' + menu_item_row +' show_elements_html_'+ menu_item_row +'"><a href="#tab-html-'+ menu_item_row +'_options" data-toggle="tab"><?php echo $ns_tab_html; ?></a></li> ';
				html +='	<li  class="show_elements_' + menu_item_row +' show_elements_add_html_'+menu_item_row+'"><a href="#tab-add-'+ menu_item_row +'-html" data-toggle="tab"><?php echo $ns_tab_add_html; ?></a></li>';	
											
				
				html +='</ul>';
				
				html +='<div class="tab-content">';
				html +='	<div class="tab-pane active in" id="tab-menu-setting-'+ menu_item_row +'">';
							
				html +='<div class="form-group required">';
				html +='	<label class="col-sm-3 control-label"><?php echo $ns_text_menu_name;?></label>';
				html +='	<div class="col-sm-5">';
				html +='		<?php foreach ($languages as $language) { ?>';
				html +='			<div class="input-group pull-left">';
				html +='				<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
				html +='					<input id="namemenu_'+ menu_item_row +'_<?php echo $language['language_id']; ?>" onChange="change_name_menu('+ menu_item_row +','+<?php echo $language['language_id']; ?>+')" class="form-control" type="text" name="config_menu_item['+ menu_item_row +'][namemenu][<?php echo $language['language_id']; ?>]" value="" />';
				html +='			</div>';
				html +='		<?php } ?>';
				html +='	</div>';
				html +='</div>';
				
				html +='	<div class="form-group additional_menu">';
				html +='		<label class="col-sm-3 control-label" for="input-additional-menu"><?php echo $ns_text_additional_menu; ?></label>';
				html +='		<div class="col-sm-5">';
				html +='			<select name="config_menu_item['+ menu_item_row +'][additional_menu]" id="input-status-additional-menu" class="form-control">';			
				html +='				<option value="additional"><?php echo $text_enabled; ?></option>';
				html +='				<option value="left" selected="selected"><?php echo $text_disabled; ?></option>';
				html +='			</select>';
				html +='		</div>';
				html +='	</div>';
				
				html +='<div class="form-group">';
				html +='	<label class="col-sm-3 control-label"><?php echo $ns_text_menu_link;?></label>';
				html +='	<div class="col-sm-5">';
				html +='		<input class="form-control" type="text" name="config_menu_item['+ menu_item_row +'][link]" value="" />';
				html +='	</div>';
				html +='</div>';
				
				html +='<div class="form-group required">';
				html +='	<label class="col-sm-3 control-label"><?php echo $ns_text_type;?></label>';
				html +='	<div class="col-sm-5">';
				html +='		<select onChange="sel_type_category('+menu_item_row+')" name="config_menu_item['+ menu_item_row +'][menu_type]" id="input-menu_type_'+ menu_item_row +'" class="form-control">';
				html +='			<option value="category"><?php echo $ns_text_type_category; ?></option>';
				html +='			<option value="html"><?php echo $ns_text_type_html; ?></option>';
				html +='			<option value="manufacturer"><?php echo $ns_text_type_manufacturer; ?></option>';
				html +='			<option value="information"><?php echo $ns_text_type_information; ?></option>';
				html +='			<option value="product"><?php echo $ns_text_type_product; ?></option>';
				html +='			<option value="link"><?php echo $ns_text_type_link; ?></option>';
				html +='		</select>';
				html +='	</div>';
				html +='</div>';
				html +='	<div class="form-group">';
				html +='		<label class="col-sm-3 control-label" for="input-status"><?php echo $ns_text_sticker_parent; ?></label>';
				html +='		<div class="col-sm-5">';
				html +='			<select class="form-control" name="config_menu_item['+ menu_item_row +'][sticker_parent]">';
				html +='				<option value="0"><?php echo $ns_text_select_sticker;?></option>	';				
				html +='				<option value="new"><?php echo "NEW";?></option>';
				html +='				<option value="top"><?php echo "TOP";?></option>';
				html +='				<option value="sale"><?php echo "SALE";?></option>';
				html +='			</select>';
				html +='		</div>';
				html +='	</div>';
				html +='		<div class="form-group">';
				html +='			<label class="col-sm-3 control-label" for="input-status"><?php echo $ns_text_status; ?></label>';
				html +='			<div class="col-sm-5">';
				html +='	 		 	<select name="config_menu_item['+ menu_item_row +'][status]" id="input-status" class="form-control">';	
				html +='					<option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
				html +='					<option value="0"><?php echo $text_disabled; ?></option>';
				html +='				 </select>';
				html +='			</div>';
				html +='		</div>';
				html +='		<div class="form-group">';
				html +='			<label class="col-sm-3 control-label"><?php echo $ns_text_sort_menu;?></label>';
				html +='			<div class="col-sm-5">';
				html +='				<input class="form-control" type="text" name="config_menu_item['+ menu_item_row +'][sort_menu]" value="0" />';
				html +='			</div>';
				html +='		</div>';
				html +='		<div class="form-group">';
				html +='			<label class="col-sm-3 control-label" for="input-image"><?php echo $ns_text_thumb; ?></label>';
				html +='			<div class="col-sm-5">';
				html +='				<a href="" id="thumb-image'+ menu_item_row +'" data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>';
				html +='				<input type="hidden" name="config_menu_item['+ menu_item_row +'][image]" value="" id="input-image'+ menu_item_row +'" />';
				html +='			</div>';							
				html +='		</div>';
				
				html += '	</div>';
				
				html += '		<div class="tab-pane fade" id="tab-category-'+ menu_item_row+'_options">';	
				html += '			<div class="form-group required">';
				html += '				<label class="col-sm-4 control-label" for="input_variant_category_'+ menu_item_row +'"><?php echo $ns_type_dropdown_list; ?></label>';
				html += '				<div class="col-sm-6">';
				html += '					<select onChange="sel_type_category('+menu_item_row+')" name="config_menu_item['+ menu_item_row +'][variant_category]" id="input_variant_category_'+ menu_item_row +'" class="form-control">';				
				html += '						<option value="simple"><?php echo $ns_type_dropdown_simple; ?></option>';
				html += '						<option value="full"><?php echo $ns_type_dropdown_full; ?></option>';
				html += '						<option value="full_image"><?php echo $ns_type_dropdown_full_image; ?></option>';
				html += '					</select>';
				html += '				</div>';
				html += '			</div>';
				html += '			<div class="form-group">';
				html += '				<label class="col-sm-4 control-label" for="input-category_show_subcategory"><?php echo $ns_show_sub_categories; ?></label>';
				html += '				<div class="col-sm-6">';
				html += '					<select id="input-category_show_subcategory" name="config_menu_item['+ menu_item_row +'][show_sub_category]" class="form-control">';						
				html += '						<option value="1"><?php echo $text_enabled; ?></option>';
				html += '						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>';									
				html += '					</select>';	
				html += '				</div>';
				html += '			</div>';
				html += '			<div class="form-group">';
				html += '				<label class="col-sm-4 control-label"><?php echo $ns_text_product_width; ?></label>';
				html += '				<div class="col-sm-6">';
				html += '					<input type="text" name="config_menu_item['+ menu_item_row +'][category_img_width]" value="50" placeholder="<?php echo $ns_text_product_width; ?>" class="form-control" />';									 
				html += '				</div>';
				html += '			</div>';		
				html += '			<div class="form-group">';
				html += '				<label class="col-sm-4 control-label"><?php echo $ns_text_product_height; ?></label>';
				html += '				<div class="col-sm-6">';
				html += '					<input type="text" name="config_menu_item['+ menu_item_row +'][category_img_height]" value="50" placeholder="<?php echo $ns_text_product_height; ?>" class="form-control" />';									 
				html += '				</div>';
				html += '			</div>';
				html += '			<div class="form-group">';
				html += '				<label class="col-sm-2 control-label" for="input-category-'+menu_item_row+'"><?php echo $ns_text_category; ?></label>';
				html += '				<div class="col-sm-10">';
				html += '					<input type="text" name="category" value="" placeholder="<?php echo $ns_text_category; ?>" id="input-category-'+menu_item_row+'" class="form-control" />';
				html += '					<div id="category-category-'+menu_item_row+'" class="well well-sm" style="height: 150px; overflow: auto;">';											
				html += '					</div>';
				html += '				</div>';
				html += '			</div>';
				html += '	</div>';
				
				html += '		<div class="tab-pane fade" id="tab-manufacturer-'+menu_item_row+'_options">';
				html += '			<div class="form-group">';
				html += '				<label class="col-sm-2 control-label"><?php echo $ns_text_manufacturer; ?></label>';
				html += '				<div class="col-sm-10">';
				html += '					<div class="well well-sm">';
				html += '						<?php foreach($manufacturers_list as $manufacturer){?>';
				html += '							<div class="checkbox">';
				html += '								<label>';
				html += '									<input type="checkbox" name="config_menu_item['+ menu_item_row +'][manufacturers_list][]"  value="<?php echo $manufacturer['manufacturer_id']?>"/> <?php echo addslashes($manufacturer['name']);?>'; 
				html += '								</label>';
				html += '							</div>';
				html += '						<?php } ?>';
				html += '					</div>';
				html += '				</div>';
				html += '			</div>';
				html += '		</div>';
				html += '		<div class="tab-pane fade" id="tab-information-'+ menu_item_row +'_options">';
				html += '			<div class="form-group">';
				html += '				<label class="col-sm-2 control-label"><?php echo $ns_text_information; ?></label>';
				html += '				<div class="col-sm-10">';
				html += '					<div class="well well-sm">';
				html += '						<?php foreach($informations_list as $information){ ?>';
				html += '							<div class="checkbox">';
				html += '								<label>';
				html += '									<input type="checkbox" name="config_menu_item['+ menu_item_row +'][informations_list][]"  value="<?php echo $information['information_id']?>"/> <?php echo addslashes($information['title']);?>'; 
				html += '								</label>';
				html += '							</div>';
				html += '						<?php } ?>';                
				html += '					</div>';
				html += '				</div>';
				html += '			</div>';
				html += '		</div>';
				
				html += '		<div class="tab-pane fade" id="tab-product-'+ menu_item_row +'_options">';
				html += '						<div class="form-group">';
				html += '							<label class="col-sm-2 control-label" for="input-product_width"><?php echo $ns_text_product_width; ?></label>';
				html += '							<div class="col-sm-10">';
				html += '								<input type="text" name="config_menu_item['+ menu_item_row +'][product_width]" value="50" placeholder="<?php echo $ns_text_product_width; ?>" id="input-product_width" class="form-control" />	';								 
				html += '							</div>';
				html += '						</div>';		
				html += '						<div class="form-group">';
				html += '							<label class="col-sm-2 control-label" for="input-product_height"><?php echo $ns_text_product_height; ?></label>';
				html += '							<div class="col-sm-10">';
				html += '								<input type="text" name="config_menu_item['+ menu_item_row +'][product_height]" value="50" placeholder="<?php echo $ns_text_product_height; ?>" id="input-product_height" class="form-control" />	';								 
				html += '							</div>';
				html += '						</div>';		
				html += '						<div class="form-group">';
				html += '							<label class="col-sm-2 control-label" for="input-product-'+ menu_item_row +'"><?php echo $ns_text_product; ?></label>';
				html += '							<div class="col-sm-10">';
				html += '								<input type="text" name="product" value="" placeholder="<?php echo $ns_text_product; ?>" id="input-product-'+ menu_item_row +'" class="form-control" />';
				html += '									<div id="product-product-'+ menu_item_row +'" class="well well-sm" style="height: 150px; overflow: auto;">';																					
				html += '									</div>';
				html += '							</div>';
				html += '						</div>';
				html += '		</div>';
				
				html += '		<div class="tab-pane fade" id="tab-link-'+ menu_item_row +'_options">';
				html += '			<div class="tab-content">';
				html += '				<div class="col-sm-3"><?php echo $ns_text_link_options; ?></div>';
				html += '				<div class="col-sm-9">';
				html += '					<select id="input-use_target_blank" name="config_menu_item['+ menu_item_row +'][use_target_blank]" class="form-control">';								
				html += '						<option value="1"><?php echo $text_enabled; ?></option>';
				html += '						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>';
				html += '					</select>';
				html += '				</div>';
				html += '			</div>';
				html += '		</div>';
				
				html += '		<div class="tab-pane fade" id="tab-html-'+ menu_item_row +'_options">';
				html += '			<ul class="nav nav-tabs" id="language_html_'+ menu_item_row +'">';
				html += '							<?php foreach ($languages as $language) { ?>';
				html += '								<li><a href="#language_html_'+ menu_item_row +'_<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>';
				html += '							<?php } ?>';
				html += '						</ul>';
				html += '						<div class="tab-content">';
				html += '							<?php foreach ($languages as $language) { ?>';
				html += '							<div class="tab-pane" id="language_html_'+ menu_item_row +'_<?php echo $language['language_id']; ?>">';
				html += '								<div class="form-group required">';
				html += '									<label class="col-sm-2 control-label" for="html_description_'+ menu_item_row +'_<?php echo $language['language_id']; ?>"><?php echo $ns_text_html_description; ?></label>';
				html += '									<div class="col-sm-10">';
				html += '										<textarea name="config_menu_item['+ menu_item_row +'][html_block][<?php echo $language['language_id']; ?>]" id="html_description_'+ menu_item_row +'_<?php echo $language['language_id']; ?>"></textarea>';
				html += '									</div>';
				html += '								</div>';
				html += '							</div>';
				html += '							<?php } ?>';
				html += '						</div>';
				html += '		</div>';
				
				html += '		<div class="tab-pane fade" id="tab-add-'+ menu_item_row +'-html">';
				html += '			<div class="form-group">';
				html += '				<label class="col-sm-4 control-label" for="input_use_html_category"><?php echo $ns_text_add_html; ?></label>';
				html += '				<div class="col-sm-8">';
				html += '					<select id="input_use_html_category" name="config_menu_item['+ menu_item_row +'][use_add_html]" class="form-control">';
				html += '						<option value="1"><?php echo $text_enabled; ?></option>';
				html += '						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>';
				html += '					</select>';
				html += '				</div>';
				html += '			</div>';
				html += '			<ul class="nav nav-tabs" id="language_add_html_'+ menu_item_row +'">';
				html += '				<?php foreach ($languages as $language) { ?>';
				html += '					<li><a href="#language_add_html_'+ menu_item_row +'_<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>';
				html += '				<?php } ?>';
				html += '			</ul>';
				html += '			<div class="tab-content">';					
				html += '				<?php foreach ($languages as $language) { ?>';
				html += '					<div class="tab-pane" id="language_add_html_'+ menu_item_row +'_<?php echo $language['language_id']; ?>">';
				html += '						<div class="form-group required">';
				html += '							<label class="col-sm-2 control-label" for="input_add_html_description_'+ menu_item_row +'_<?php echo $language['language_id']; ?>"><?php echo $ns_text_html_description; ?></label>';
				html += '								<div class="col-sm-10">';
				html += '									<textarea name="config_menu_item['+ menu_item_row +'][add_html][<?php echo $language['language_id']; ?>]" id="input_add_html_description_'+ menu_item_row +'_<?php echo $language['language_id']; ?>"></textarea>';
				html += '								</div>';
				html += '						</div>';
				html += '					</div>';
				html += '				<?php } ?>';
				html += '			</div>';
				html += '		</div>';
				html +='</div>';
				html +='</div>';
				$('.banner-category').append(html);
				
				$('#addMenuItem').before('<li id="menu-item-' + menu_item_row + '" ><a data-toggle="tab" class="btn btn-primary menu-tab-link" href="#tab-menu-item-' + menu_item_row + '" > <?php echo $ns_text_menu_name; ?> <i onclick="$(\'#menu-item-' + menu_item_row + '\').remove(); $(\'#tab-menu-item-' + menu_item_row + '\').remove(); $(\'a[href=#tab-menu-item-0]\').trigger(\'click\'); return false;" class="fa fa-minus-circle remove_menu_item"></i></a></li>');

				



				
			<?php foreach ($languages as $language) { ?>	
				$('#html_description_'+ menu_item_row +'_<?php echo $language['language_id']; ?>').summernote({height: 200});	
				var row_menu_item = menu_item_row;		
				$('#language_html_'+ row_menu_item +'_<?php echo $language['language_id']; ?> .note-editable').on("blur", function(){
					$('#html_description_'+ row_menu_item +'_<?php echo $language['language_id']; ?>').html($(this).code());				
				});	
				$('#input_add_html_description_'+ row_menu_item +'_<?php echo $language['language_id']; ?>').summernote({height: 200});		
				$('#language_add_html_'+ row_menu_item +'_<?php echo $language['language_id']; ?> .note-editable').on("blur", function(){
					$('textarea[name="config_menu_item['+ row_menu_item +'][add_html][<?php echo $language['language_id']; ?>]"]').html($(this).code());
				});
			<?php } ?>	
						
				$('button[data-event=\'showImageDialog\']').attr('data-toggle', 'image').removeAttr('data-event');
				
				var newtab = $('li#menu-item-' + menu_item_row);

				$('a[href=\'#tab-menu-item-'+ menu_item_row +'\']').trigger('click');
				$('a[href=\'#tab-menu-setting-'+ menu_item_row +'\']').trigger('click');
				
				$('#language_add_html_'+ menu_item_row +' a:first').tab('show');
				$('#language_html_'+ menu_item_row +' a:first').tab('show');

				var category_row_menu_item = menu_item_row;
				$('#input-category-'+category_row_menu_item).autocomplete({
				'source': function(request, response) {
					$.ajax({
						url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
						dataType: 'json',
						success: function(json) {				
							response($.map(json, function(item) {
								return {
									label: item['name'],
									value: item['category_id']
								}
							}));
						}
					});
				},
				'select': function(item) {
					$('#input-category-'+category_row_menu_item).val('');		
					$('#category-item-'+ category_row_menu_item +'' + item['value']).remove();
					
					cathtml  = '<div class="row-category-menu" id="category-item-'+ category_row_menu_item +'' + item['value'] + '">';
					cathtml += '<i class="btn btn-danger fa fa-minus-circle"></i> ';
					cathtml += '<input class="form-control input-sort-category" size="3" type="text" name="config_menu_item['+ category_row_menu_item +'][sort_category][' + item['value'] + ']" value="0"/>';
					cathtml += '<select class="input-sticker-category" name="config_menu_item['+ category_row_menu_item +'][sticker][' + item['value'] + ']">';
					cathtml += '	<option value="0"><?php echo $ns_text_select_sticker;?></option>';					
					cathtml += '	<option value="new"><?php echo "NEW";?></option>';
					cathtml += '	<option value="top"><?php echo "TOP";?></option>';
					cathtml += '	<option value="sale"><?php echo "SALE";?></option>';
					cathtml += '</select>';
					cathtml += '<span>'+item['label']+'</span>';
					cathtml += '<input type="hidden" name="config_menu_item['+ category_row_menu_item +'][category_list][]" value="' + item['value'] + '" /></div>';
					$('#category-category-'+ category_row_menu_item+'').append(cathtml);		
				}
			});	
				$('#category-category-'+ category_row_menu_item).delegate('.fa-minus-circle', 'click', function() {
					$(this).parent().remove();
				});	
				/*PRODUCT AUTOCOMPLETE*/
				var product_row_menu_item = menu_item_row;
				$('#input-product-'+ product_row_menu_item).autocomplete({
					'source': function(request, response) {
						$.ajax({
							url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
							dataType: 'json',
							success: function(json) {
								response($.map(json, function(item) {
									return {
										label: item['name'],
										value: item['product_id']
									}
								}));
							}
						});
					},
					'select': function(item) {
						$('#input-product-'+ product_row_menu_item).val('');	
						$('#product-item-'+ product_row_menu_item +'' + item['value']).remove();		
						$('#product-product-'+ product_row_menu_item+'').append('<div id="product-item-'+ product_row_menu_item +'' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="config_menu_item['+ product_row_menu_item +'][products_list][]" value="' + item['value'] + '" /></div>');	
					}
				});
				$('#product-product-'+ product_row_menu_item).delegate('.fa-minus-circle', 'click', function() {
					$(this).parent().remove();
				});
							
				
				$(".show_elements_"+menu_item_row).hide();
				sel_menu_type=$("#input-menu_type_"+ menu_item_row +" :selected").val();
				sel_category_type=$("#input_variant_category_"+ menu_item_row +" :selected").val();
				$(".show_elements_"+sel_menu_type+'_'+menu_item_row).show();
				if((sel_menu_type=="category" && (sel_category_type=="simple" || sel_category_type=="0")) || sel_menu_type=="0" || sel_menu_type=="auth" || sel_menu_type=="link" || sel_menu_type=="html")
				  {
					$(".show_elements_add_html_"+menu_item_row).hide();
				  }
				else
				  {
					$(".show_elements_add_html_"+menu_item_row).show();
				  }
				  
				  
				var config_main_menu_selection = $('#input-menu-selection option:selected').val();	
				change_menu_theme(config_main_menu_selection);
				
				menu_item_row++;
			}

			function change_name_menu(menu_item_row, lang_id){
				namemenu=$('#namemenu_'+ menu_item_row+'_'+lang_id+'').val();
				$('li#menu-item-' + menu_item_row+' a').html(namemenu +' <i onclick="$(\'#menu-item-' + menu_item_row + '\').remove(); $(\'#tab-menu-item-' + menu_item_row + '\').remove(); return false;" class="fa fa-minus-circle remove_menu_item"></i></a></li>');
			}
			function sel_type_category(menu_item_row){
				$(".show_elements_"+menu_item_row).hide();	
					sel_menu_type=$("#input-menu_type_"+ menu_item_row +" :selected").val();		
					sel_category_type=$("#input_variant_category_"+ menu_item_row +" :selected").val();
				$(".show_elements_"+sel_menu_type+'_'+menu_item_row).show();
				if((sel_menu_type=="category" && (sel_category_type=="simple" || sel_category_type=="0")) || sel_menu_type=="0" || sel_menu_type=="auth" || sel_menu_type=="link" || sel_menu_type=="html")
				  {
					$(".show_elements_add_html_"+menu_item_row).hide();
				  }
				else
				  {
					$(".show_elements_add_html_"+menu_item_row).show();
				  }	
			}
			</script>
					
			</div>
        </form>
      </div>
    </div>
  </div>
  </div>
<?php echo $footer; ?>