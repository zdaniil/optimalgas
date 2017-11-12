<div class="simplecheckout-block" id="simplecheckout_login" <?php echo $has_error ? 'data-error="true"' : '' ?>>
    <div class="form-login">
        <?php if ($error_login) { ?>
        <div class="simplecheckout-warning-block"><?php echo $error_login ?></div>
        <?php } ?>
        <fieldset>
            <div class="input-row required">
                <label class="control-label"><?php echo $entry_email; ?></label>
                <input class="form-control" data-onkeydown="detectEnterAndLogin" type="text" name="email" value="<?php echo $email; ?>" /></label>
            </div>
            <div class="input-row required">
                <label class="control-label"><?php echo $entry_password; ?></label>
                <input class="form-control" data-onkeydown="detectEnterAndLogin" type="password" name="password" value="" /></label> 
                   </div>
            <button type="submit" id="simplecheckout_button_login" data-onclick="login" class="button btn-primary button_oc btn"><?php echo $button_login; ?></button>
              <a href="<?php echo $forgotten; ?>" class="forgot"><?php echo $text_forgotten; ?></a>
        </fieldset>
    </div>
</div>