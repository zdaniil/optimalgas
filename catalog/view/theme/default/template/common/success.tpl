<?php echo $header; ?>
<div class="container account-page">
  <ul class="bread-crumbs">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="order">
    <div id="content" class="simpleregister"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
   <div class="buttons clearfix">
          <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
        </div>
      <?php echo $content_bottom; ?></div>
</div>
</div>
<?php echo $footer; ?>
