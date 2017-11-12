<?php echo $header; ?>
<div class="container">
  <?php echo $content_top; ?>
  <ul class="bread-crumbs">
<?php foreach ($breadcrumbs as $breadcrumb) { ?>
<li typeof="v:Breadcrumb"><a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title"><?php echo $breadcrumb['text']; ?></a></li>
<?php } ?>
  </ul>

           <?php echo $column_left; ?>
    <div class="goods-block">
                    <div class="item-card">
                        <div class="top-info">
                            <div class="item-images">
                             <?php if ($thumb || $images) { ?>
                                <div class="owl-carousel">
                                    <div class="item-photo">
                                             <?php if ($thumb) { ?>
           <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
            <?php } ?>
                                    </div>

                                    <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
                                    <div class="item-photo">
                                        <img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                    </div>
                                    <div class="item-photo">
                                         <img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                    </div>
                                     <?php } ?>
            <?php } ?>
                                </div>
                                <?php } ?>
                            </div>
                            <section class="item-descr">
                                <h1 class="h1"><?php echo $heading_title; ?></h1>
                                <strong class="price">Цена: <span><?php echo $price; ?></span></strong>
                        
                        <ul class='option-list'>  
                   <?php if ($manufacturer) { ?>
            <li><span><?php echo $text_manufacturer; ?></span> <span class='value'><a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><span><?php echo $text_model; ?></span> <span class='value'><span class='value'><span class='value'><?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><span><?php echo $text_reward; ?></span> <span class='value'><span class='value'><?php echo $reward; ?></li>
            <?php } ?>
            <li><span><?php echo $text_stock; ?></span> <span class='value'><?php echo $stock; ?></li>
          </ul>
                                <div class="btns-row">
                                <div id="product">
                                  <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                   <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" id="input-quantity" />
                                    <a href="javascript:void(0)" onclick="cart.add('<?php echo $product_id; ?>', '1');" class="btn btn-primary">Добавить в корзину</a>
                                    <a href="javascript:void(0)" class="default-link">заказать обратный звонок</a>
                    
                                </div>
                                </div>
                            </section>
                        </div>
                        <div class="bottom-info">
                            <ul class="info-tab-list">
                                <li><a class="tab-selector active" data-tab="#descr" href="#">Описание</a></li>
                                <li><a class="tab-selector" data-tab="#char" href="#">Характеристики</a></li>
                                <li><a class="tab-selector" data-tab="#review" href="#">Отзывы</a></li>
                            </ul>
                            <div class="info-content">
                                <div id="descr"><?php echo $description; ?></div>
                                <div id="char">
                                  
 <?php if ($attribute_groups) { ?>
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <strong><?php echo $attribute_group['name']; ?></strong>
                  <ul class='option-list'>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>

                   <li><span><?php echo $attribute['name']; ?></span> <span class='value'><?php echo $attribute['text']; ?></span>
                                    </li>
                  <?php } ?>
                </ul>
                <?php } ?>
            <?php } ?>

                                </div>
                                <div id="review">
                                  

            <?php if ($review_status) { ?>
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            <?php } ?>


                                </div>
                             </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'hidden\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {

  $(".image").click(function(){ // Событие клика на маленькое изображение
      var img = $(this);  // Получаем изображение, на которое кликнули
    var src = img.attr('src'); // Достаем из этого изображения путь до картинки
    $("body").append("<div class='popup'>"+ //Добавляем в тело документа разметку всплывающего окна
             "<div class='popup_bg'></div>"+ // Блок, который будет служить фоном затемненным
             "<img src='"+src+"' class='popup_img' />"+ // Само увеличенное фото
             "</div>"); 
    $(".popup").fadeIn(800); // Медленно выводим изображение
    $(".popup_bg").click(function(){  // Событие клика на затемненный фон    
      $(".popup").fadeOut(800); // Медленно убираем всплывающее окно
      setTimeout(function() { // Выставляем таймер
        $(".popup").remove(); // Удаляем разметку всплывающего окна
      }, 800);
    });
  });

});
//--></script>
<?php echo $footer; ?>
