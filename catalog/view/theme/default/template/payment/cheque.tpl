<div class="buttons"> 
 <button type="submit" class="btn btn-primary" id="button-confirm"><?php echo $button_confirm; ?></button>
</div>
<script type="text/javascript"><!--
$('#button-confirm').on('click', function() {
	$.ajax({
		type: 'get',
		url: 'index.php?route=payment/cheque/confirm',
		cache: false,
		beforeSend: function() {
			
		},
		complete: function() {
		
		},
		success: function() {
			location = '<?php echo $continue; ?>';
		}
	});
});
//--></script>
