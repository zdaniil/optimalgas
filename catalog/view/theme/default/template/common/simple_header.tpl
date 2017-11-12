<?php echo $header; ?>
<div id="content">
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="container reg-page">
    <div class="order"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>