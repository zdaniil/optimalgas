  <?php  $counter = 0;

foreach ($products as $product) { 
   $counter++;
}
  ?>
<div class="cart-block">
                        <button class="cart" data-modal="#modal-cart">
                            <i class="icon-cart"></i>
                            <span class="quantity-cart" id="cart-totalp"><span id="cart-count"><?php echo $counter; ?></span></span>
                        </button>
                    </div>
    
    <div class="modal cart-window" data-modal-window id="modal-cart">
        <a class="close" data-modal-close>&times;</a>
        <h5>Корзина</h5>
        <form action="#">
<div id="cart">
         

 <?php foreach ($products as $product) { ?>
                                        <div class="cart-row">
                                            <div class="order-info">
                                                <a target="_blank" href="<?php echo $product['href']; ?>" class="img-holder"><?php if ($product['thumb']) { ?><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /><?php } ?>
                                                </a>
                                                
                                                <div class="img-description">
                                                    <?php echo $product['name']; ?>
                                                </div>
                                            </div>
                                            <div class="order-price-info">
                                                <span class="sum"><?php echo $product['price']; ?></span>
 <button class="btn btn-primary" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" type="button">
                                    ×
                                </button>
                                            </div>
                                              
                                        </div>
                                        <?php } ?>
                                               <div class="cart-row footer-row">
                <a href="#" class="cont-link" data-modal-close>Продолжить покупки</a>
          <a href="https://optimalgas.com.ua/simplecheckout" class="btn btn-primary">Оформить заказ</a>
            </div>



</div>
</form>
    </div>