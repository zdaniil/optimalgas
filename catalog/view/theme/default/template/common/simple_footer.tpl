</div>
</div>
</div>
<script type="text/javascript"><!--
$('#button-zakaz').on('click', function() {
	$.ajax({
		type: 'get',
		url: '',
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
<?php echo $footer; ?>