   <aside class="category-select-block">
                        <h5 class="opener-category">Каталог товаров<i></i><span class="cat-icon"><img src="build/images/catalog.png" alt="catalog-icon"></span></h5>
                        <ul class="category-list">

         
<?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <?php if ($category['category_id'] == $category_id) { ?>
                            <li class="category-item active"><?php } else { ?><li class="category-item"><?php } ?> 
                                <div class="category-link">
                                    <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                    <div class="category-open">
                                        <span class="triangle"></span>
                                    </div>
                                </div>
                                <ul class="hidden-list">
                         <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                      <?php foreach ($children as $child) { ?>
                        <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                   <?php } ?>
                    <?php } ?>
                                </ul>
                            </li>



                     <?php } else { ?>


                    <li class="category-item">
                                <div class="category-link">
                                    <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                </div>
                            </li>
<?php } ?>

   <?php } ?>

                        </ul>
                    </aside>