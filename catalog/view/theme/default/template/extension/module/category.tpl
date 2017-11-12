   <aside class="category-select-block">
                        <h5 class="opener-category">Каталог товаров<i></i><span class="cat-icon"><img src="build/images/catalog.png" alt="catalog-icon"></span></h5>
                        <ul class="category-list">

<?php if ($categories) { ?>


                         
<?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
                            <li class="category-item">
                                <div class="category-link">
                                    <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                    <div class="category-open">
                                        <span class="triangle"></span>
                                    </div>
                                </div>
                                <ul class="hidden-list">
                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                      <?php foreach ($children as $child) { ?>
                                   <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
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

<?php } ?>

                        </ul>
                    </aside>