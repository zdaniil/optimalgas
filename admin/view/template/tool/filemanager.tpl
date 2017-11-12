<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <div class="panel-body">
      <script type="text/javascript" charset="utf-8">
         /*tubs get value for parameter from url */
         function getQueryVariable(variable) {
           var query = window.location.search.substring(1);
           var vars = query.split("&");
           for (var i=0;i<vars.length;i++) {
             var pair = vars[i].split("=");
             if (pair[0] == variable) {
               return pair[1];
             }
           }
             return '';
         }

         $().ready(function() {
           var elf = $('#elfinder').elfinder({
             url : '<?=$init_url;?>',
             lang: 'ru',
            customData : {startPath : getQueryVariable("path")},
             rememberLastDir : false
           }).elfinder('instance');
         });
       </script>
      <div id="elfinder"></div>
    </div>
  </div>
</div>
<?php echo $footer; ?>