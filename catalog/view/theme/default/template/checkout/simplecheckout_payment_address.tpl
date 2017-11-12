<div id="simplecheckout_payment_address" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $display_error && $has_error ? 'data-error="true"' : '' ?>>
  <?php if ($display_header) { ?>
  <h2><?php echo $text_checkout_payment_address ?></h2>
  <?php } ?>
    <?php foreach ($rows as $row) { ?>
      <?php echo $row ?>
    <?php } ?>
    <?php foreach ($hidden_rows as $row) { ?>
      <?php echo $row ?>
    <?php } ?>
  <?php if ($display_address_same) { ?>
    <div class="simplecheckout-customer-same-address">
      <label><input type="checkbox" name="address_same" value="1" <?php echo $address_same ? 'checked="checked"' : '' ?> data-onchange="reloadAll"><?php echo $entry_address_same ?></label>
    </div>
  <?php } ?>
</div>