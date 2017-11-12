<?php echo $header; ?>
    <main>
        <div id="content" class="text-page video-page">
            <div class="container">
              <ul class="bread-crumbs">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
                <h1><?php echo $heading_title; ?></h1>
                <p><?php echo $description; ?></p>


           <?php if (($products) && (!$products)) { ?>
      <h3><?php echo $text_related_products; ?></h3>
     <div class="goods-thumb-holder">
  <?php foreach ($products as $product) { ?>
    <div class="goods-thumb">
                                        <a href="<?php echo $product['href']; ?>">
                                            <div class="img-holder">
                                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" height="169" width="220">
                                            </div>
                                            <span class="goods-description"><?php echo $product['name']; ?></span>
                                        </a>
                                  <p class="goods-description"></p>
                                        <div class="thumb-footer">
                                            <span class="price"><?php echo $product['price']; ?></span>
                                            <a href="javascript:void(0)" class="to-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                                                <i class="icon-cart"></i>
                                            </a>
                                        </div>
                                    </div>
        <?php } ?>
     </div>
 <?php } ?>
          </div>
        </div>
    </main>
<?php echo $footer; ?>