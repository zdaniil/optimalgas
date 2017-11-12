<div id="simplecheckout_shipping_address" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $display_error && $has_error ? 'data-error="true"' : '' ?>>
<h2><?php echo $text_checkout_shipping_address ?></h2>
    <?php foreach ($rows as $row) { ?>
      <?php echo $row ?>
    <?php } ?>
    <?php foreach ($hidden_rows as $row) { ?>
      <?php echo $row ?>
    <?php } ?>
</div>