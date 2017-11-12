<?php echo $header; ?>
<main>
<div id="content" class="category">
<div class="container">
  <ul class="bread-crumbs">
<?php foreach ($breadcrumbs as $breadcrumb) { ?>
<li typeof="v:Breadcrumb"><a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title"><?php echo $breadcrumb['text']; ?></a></li>
<?php } ?>
  </ul>
  <?php echo $column_left; ?>
      <div class="goods-block"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
       <div>
      <?php if ($thumb || $description) { ?>
        <?php if ($thumb) { ?>
        <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" align="text-left"/>
        <?php } ?>
        <?php if ($description) { ?>
           <div class="category-description"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <?php } ?>


      <?php if ($products) { ?>
      <!--фильтр-->
       <div class="filter">
<span class="quantity"></span>
          <div class="filter-select">
                    <form action="#">
                        <div class="select">
                            <label for="sort">Сортировка:&nbsp;</label>
                            <select name="sort" id="sort" class="sort" onchange="location = this.value;">
                                          <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
                            </select>
                        </div>
                        <div class="select">
                            <label for="gpp">На странице:&nbsp;</label>
                            <select name="goods-per-page" id="gpp" class="gpp" onchange="location = this.value;">
             <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
                            </select>
                        </div>
                    </form>
                </div>
        </div>
         <!--/фильтр-->

                     
                     <span class="current-page"><?php echo $results; ?></span>
        <?php echo $pagination; ?>

      <div class="goods-thumb-holder">
        <?php foreach ($products as $product) { ?>

     <div class="goods-thumb">
                                <a href="<?php echo $product['href']; ?>">
                                    <div class="img-holder">
                                    <img src="<?php echo $product['thumb']; ?>" height="169" width="220" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
                                    </div>
                                <span class="goods-description"><?php echo $product['name']; ?></a></span>
                                </a>
                                <div class="thumb-footer">
                 <span class="price">
                <?php if (!$product['special']) { ?>
                <span><?php echo $product['price']; ?></span>
                <?php } else { ?>
                <span class="old-price"><?php echo eregi_replace("([^0-9.])", "", $product['price']); ?></span> <span class="new-price"><?php echo $product['special']; ?></span>
                <?php } ?>
                </span>
                                    <a href="javascript:void(0)" class="to-cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                        <i class="icon-cart"></i>
                                    </a>
                                </div>
                            </div>

        <?php } ?>
      </div>
      <?php echo $pagination; ?>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <div class="empty-category">
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
