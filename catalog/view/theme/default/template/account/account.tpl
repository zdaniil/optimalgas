<?php echo $header; ?>
<div class="content">
<div class="container account-page">
  <ul class="bread-crumbs">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="order">
     <h1><?php echo $text_my_account; ?></h1>
    <div class="well">
      <ul class="buttons">
        <li><a class="login-link" href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
        <li><a class="login-link" href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
        <li><a class="login-link" href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
      </ul>
        <div class="buttons clearfix">
          <div class="pull-left"><a href="/" class="btn btn-primary">На главную</a></div>
        </div>
      <?php echo $content_bottom; ?></div>
</div>
</div>
</div>
<?php echo $footer; ?> 