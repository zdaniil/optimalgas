<?php echo $header; ?>
<div class="container login-page">
  <ul class="bread-crumbs">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="order">
    <div id="content" class="simpleregister"><?php echo $content_top; ?>
     <div class="row">
      <h1><?php echo $heading_title; ?></h1>
      <p><?php echo $text_email; ?></p>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <div class="form-group">
          <div class="form-group required">
              <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
          </div>
        </div>
        <div class="buttons clearfix">
          <div class="pull-left">
            <button type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
</div>
</div>
</div>
<?php echo $footer; ?>