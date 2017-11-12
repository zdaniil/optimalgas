<div class="simplecheckout-block" id="simplecheckout_customer" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $display_error && $has_error ? 'data-error="true"' : '' ?>>
  <?php if ($display_header || $display_login) { ?>
  <h2><?php echo $text_checkout_customer ?></h2>
<?php } ?>
           <ul class="user-type">
    <?php if ($display_login) { ?><li><a class="tab-selector active" href="javascript:void(0)" data-tab="#new">Новый покупатель</a></li>
           <li><a data-onclick="openLoginBox" class="tab-selector" href="javascript:void(0)" data-tab="#constant"><?php echo $text_checkout_customer_login ?></a></li><?php } ?>
          </ul>
                                    <div class="user-tab">
                                        <div id="new">
                       
         <?php if ($display_registered) { ?>
      <div class="success"><?php echo $text_account_created ?></div>
    <?php } ?>
    <?php if ($display_you_will_registered) { ?>
      <div class="you-will-be-registered"><?php echo $text_you_will_be_registered ?></div>
    <?php } ?>
    <?php foreach ($rows as $row) { ?>
      <?php echo $row ?>
    <?php } ?>                               
                                        </div>
                                        <div id="constant">
                                            
                                            <div id="old">
                                     <div id="showlogin"></div>
                                            </div>
                                        </div>
              </div>

</div>