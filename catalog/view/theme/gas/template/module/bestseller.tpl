<div id="tab1">
  <div class="tab-popular">
  <?php foreach ($products as $product) { ?>
    <div class="goods-thumb">
                                        <a href="<?php echo $product['href']; ?>">
                                            <div class="img-holder">
                                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" height="169" width="220">
                                            </div>
                                            <span class="goods-description"><?php echo $product['name']; ?></span>
                                        </a>
                                  <p class="goods-description"><?php echo $product['description']; ?></p>
                                        <div class="thumb-footer">
                                            <span class="price"><?php echo $product['price']; ?></span>
                                            <a href="javascript:void(0)" class="to-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                                                <i class="icon-cart"></i>
                                            </a>
                                        </div>
                                    </div>
 <?php } ?>
     </div>
 </div>