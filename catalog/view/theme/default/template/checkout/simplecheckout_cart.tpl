 <div class="cart-window" id="simplecheckout_cart" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $display_error && $has_error ? 'data-error="true"' : '' ?>>
<?php if ($display_header) { ?>
 
<?php } ?>
<?php if ($attention) { ?>
    <div class="simplecheckout-warning-block"><?php echo $attention; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
    <div class="simplecheckout-warning-block"><?php echo $error_warning; ?></div>
<?php } ?>
                                        
                                        <h5>ВАШ ЗАКАЗ</h5>
                                        <?php foreach ($products as $product) { ?>
                                        <div class="cart-row">
                                            <div class="order-info">
                                                <a target="_blank" href="<?php echo $product['href']; ?>" class="img-holder"><?php if ($product['thumb']) { ?><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /><?php } ?>
                                                </a>  
                                                <div class="img-description">
                                                    <?php echo $product['name']; ?>
                                                    <span class="price"><?php echo $product['price']; ?></span>
                                                </div>
                                            </div>
                                            <div class="order-price-info">
                                                 <div class="row">      
                                                <div class="quantity">
                                                    <input type="number" min="1" max="999" step="1" data-onchange="changeProductQuantity" name="quantity[<?php echo !empty($product['cart_id']) ? $product['cart_id'] : $product['key']; ?>]" value="<?php echo $product['quantity']; ?>">
                                                    <span>шт.</span>
                                                </div>
                                   <span class="sum"><?php echo $product['total']; ?></span>
                                 <button class="btn btn-primary" data-onclick="removeProduct" data-product-key="<?php echo !empty($product['cart_id']) ? $product['cart_id'] : $product['key'] ?>" data-toggle="tooltip" type="button">
                                    ×
                                </button>
                                            </div>
                                         </div>     
                                        </div>
                                        <?php } ?>

                                        <input type="hidden" name="remove" value="" id="simplecheckout_remove">
                                        <span class="result"><span>Итого:&nbsp;&nbsp;</span><?php echo $cart_total ?></span>
                                        <div class="cart-row footer-row">
                                            <a href="#" class="cont-link">Продолжить покупки</a>
                                        </div>
                                    </div>