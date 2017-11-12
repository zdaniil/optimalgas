      <section class="slider">
            <div class="owl-carousel owl-theme">   <?php foreach ($banners as $banner) { ?>
                <div class="slide-bg" style="background-image: url(<?php echo $banner['image']; ?>);">
                    <div class="container">
                        <div class="text-holder">
                            <img class="slider-logo" src="build/images/slider-logo.png" alt="Optimal Gas">
                            <strong class="slogan"><?php echo addslashes($banner['title']); ?></strong>
                            <a href="#" class="btn btn-primary" data-modal="#modal-call-back">Заказать обратный звонок</a>
                        </div>
                    </div>
                </div>       <?php } ?>
            </div>
        </section>