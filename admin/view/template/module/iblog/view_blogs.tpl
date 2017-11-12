<table id="PostsWrapper<?php echo $store_id; ?>" class="table table-bordered table-hover" width="100%">
      <thead>
        <tr class="table-header">
          <td class="left" width="3%"><strong>ID</strong></td>
          <td class="left" width="15%"><strong>Title</strong></td>
          <td class="left" width="20%"><strong>Excerpt</strong></td>
          <td class="left" width="5%"><strong>Author</strong></td>
          <td class="left" width="10%"><strong>Date Created</strong></td>
          <td class="left" width="5%"><strong>Status</strong></td>
          <td class="left" width="8%"><strong>Actions</strong></td>
        </tr>
      </thead>
  	<?php if (!empty($sources)) { ?>
		<?php $i=0; foreach ($sources as $post) { ?>
        	<tbody>
				<tr>
					<td class="left">
						<?php echo $post['iblog_post_id']; ?>
					</td>
					<td class="left">
						<?php echo $post['title']; ?>
					</td>
                    <td class="left">
						<?php echo $post['excerpt']; ?>
					</td>
                    <td class="left">
						<?php echo $post['author']; ?>
					</td>
                    <td class="left">
						<?php echo $post['created']; ?>
					</td>
                    <td class="left">
						<?php if ($post['is_published']==1) { echo 'Published'; } else { echo 'Draft'; } ?>
					</td>
                    <td class="center actions">
						<a href="<?php echo $url_link->link('module/'.$moduleNameSmall.'/newBlogPost', 'token='.$token.'&store_id='.$store_id.'&post_id='.$post['iblog_post_id'], 'SSL'); ?>" class="btn btn-xs btn-primary editPost"><i class="fa fa-pencil"></i> Edit</a> <a onclick="removeItem('<?php echo $post['iblog_post_id']; ?>')" class="btn btn-xs btn-danger"><i class="fa fa-times"></i> Remove</a>
					</td>
				</tr>
			</tbody>
        <?php } ?>
	 <?php } else { ?>
		<tr>
			<td class="center" colspan="7">There are no blog posts yet.</td>
		</tr>
	<?php } ?>
    <tfoot><tr><td colspan="10">
    	<br />
    	<div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
    </td></tr></tfoot>
</table>
<script>
$(document).ready(function(){
	$('#PostsWrapper<?php echo $store_id; ?> .pagination a').click(function(e){
		e.preventDefault();
		$.ajax({
			url: this.href,
			type: 'get',
			dataType: 'html',
			success: function(data) {				
				$("#PostsWrapper<?php echo $store_id; ?>").html(data);
			}
		});
	 });		 
});
</script>