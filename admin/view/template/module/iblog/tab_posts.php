<div class="container-fluid" id="panel_positions">
	<div class="row">
      <div class="col-md-2">
        <h5><strong>Main image show:</strong></h5>
        <span class="help"><i class="fa fa-info-circle"></i> Show or hide the main image in the blog post.</span>
      </div>
      <div class="col-md-3">
        <select id="MainImageChecker" name="<?php echo $moduleName; ?>[MainImageEnabled]" class="form-control">
              <option value="yes" <?php echo (!empty($moduleData['MainImageEnabled']) && $moduleData['MainImageEnabled'] == 'yes') ? 'selected=selected' : '' ?>><?php echo $text_enabled; ?></option>
              <option value="no"  <?php echo (empty($moduleData['MainImageEnabled']) || $moduleData['MainImageEnabled']== 'no') ? 'selected=selected' : '' ?>><?php echo $text_disabled; ?></option>
        </select>
      </div>
    </div>
    <div class="row" id="MainImageOptions">
	  <hr />
      <div class="col-md-2">
        <h5><strong>Main image dimensions:</strong></h5>
        <span class="help"><i class="fa fa-info-circle"></i>&nbsp;Specify the main image dimensions.</span>
      </div>
      <div class="col-md-3">
        <div class="input-group">
          <span class="input-group-addon">Width:&nbsp;</span>
          <input type="text" class="form-control" name="<?php echo $moduleName; ?>[MainImageWidth]" value="<?php if(isset($moduleData['MainImageWidth'])) { echo $moduleData['MainImageWidth']; } else { echo "250"; }?>" />
          <span class="input-group-addon">px</span>
        </div><br />
        <div class="input-group">
          <span class="input-group-addon">Height:</span>
          <input type="text" class="form-control" name="<?php echo $moduleName; ?>[MainImageHeight]" value="<?php if(isset($moduleData['MainImageHeight'])) { echo $moduleData['MainImageHeight']; } else { echo "250"; }?>" />
          <span class="input-group-addon">px</span>
        </div>
      </div>
    </div>
	<hr />
    <div class="row">
      <div class="col-md-2">
        <h5><strong>Custom CSS:</strong></h5>
        <span class="help"><i class="fa fa-info-circle"></i>&nbsp;Paste your custom CSS for the blog post here.</span>
      </div>
      <div class="col-md-3">
        <div class="form-group">
                    <textarea class="form-control" name="<?php echo $moduleName; ?>[CustomPostCSS]" placeholder="Enter your custom CSS for the posts here." rows="4"><?php if(isset($moduleData['CustomPostCSS'])) { echo $moduleData['CustomPostCSS']; } else { echo ""; }?></textarea>
		</div>
      </div>
    </div>
	<hr />
	<div class="row">
      <div class="col-md-2">
        <h5><strong>DisqusComments status:</strong></h5>
        <span class="help"><i class="fa fa-info-circle"></i> Enable or disable the comments.</span>
      </div>
      <div class="col-md-3">
        <select id="DisqusChecker" name="<?php echo $moduleName; ?>[DisqusEnabled]" class="form-control">
              <option value="yes" <?php echo (!empty($moduleData['DisqusEnabled']) && $moduleData['DisqusEnabled'] == 'yes') ? 'selected=selected' : '' ?>><?php echo $text_enabled; ?></option>
              <option value="no"  <?php echo (empty($moduleData['DisqusEnabled']) || $moduleData['DisqusEnabled']== 'no') ? 'selected=selected' : '' ?>><?php echo $text_disabled; ?></option>
        </select>
      </div>
    </div>
	<div class="row" id="DisqusOptions">
      <hr />
      <div class="col-md-2">
        <h5><strong>DisqusComments Short-name:</strong></h5>
        <span class="help"><i class="fa fa-info-circle"></i> Get short-name for your site from http://disqus.com/admin/create/.</span>
      </div>
      <div class="col-md-3">
      	<input type="text" name="<?php echo $moduleName; ?>[DisqusShortName]" class="form-control" value="<?php echo(isset($moduleData['DisqusShortName'])) ? $moduleData['DisqusShortName'] : '' ; ?>" />
      </div>
    </div>
    <hr />
    <div class="row">
      <div class="col-md-2">
        <h5><strong>AddThis sharing:</strong></h5>
        <span class="help"><i class="fa fa-info-circle"></i> Enable or disable the sharing options from AddThis.</span>
      </div>
      <div class="col-md-3">
        <select name="<?php echo $moduleName; ?>[AddThisEnabled]" class="form-control">
              <option value="yes" <?php echo (!empty($moduleData['AddThisEnabled']) && $moduleData['AddThisEnabled'] == 'yes') ? 'selected=selected' : '' ?>><?php echo $text_enabled; ?></option>
              <option value="no"  <?php echo (empty($moduleData['AddThisEnabled']) || $moduleData['AddThisEnabled']== 'no') ? 'selected=selected' : '' ?>><?php echo $text_disabled; ?></option>
        </select>
      </div>
    </div>
</div>