<?php echo $header; ?>
 <div id="content" class="news-page">
 <div class="container">
  <ul class="bread-crumbs">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
                <h2><?php echo $heading_title; ?></h2>
<div class="news-container">

        <?php foreach ($articles as $article) { ?>
        <div class="news-holder">              
                       <a href="<?php echo $article['href']; ?>" class="news-picture">
                           <img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" />
                       </a>
                       <div class="news-text">
                        <a href="<?php echo $article['href']; ?>"><h3><?php echo $article['name']; ?></h3></a> 
                           <p><?php echo $article['preview']; ?></p>
                       </div>
            </div>
               <?php } ?>
        </div>
     </div>
<?php echo $pagination; ?>
   </div>
<?php echo $footer; ?>