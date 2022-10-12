 <!-- About Start -->
 <div class="container-xxl about" id="about">
     <div class="container py-5 px-lg-5">
         <div class="row">
             <div class="col-lg-4">
                 <div class="text-heading" data-aos="fade-up" data-aos-duration="1000">
                     <h1>About <span class="txt-blue">Us</span></h1>
                 </div>
                 <div class="slider-container mt-4" data-aos="fade-up" data-aos-duration="1000">
                     <h6 class="fw-bold">perusahaan yang bergerak di bidang jasa pengiriman dan logistik</h6>
                     <div class="swiper-container about-slider">
                         <div class="swiper-wrapper">
                             <?php foreach ($service as $s) { ?>
                             <div class="swiper-slide">
                                 <div class="box-about btn p-4 m-4 text-start shadow">
                                     <div class="d-flex align-items-center">
                                         <img src="https://admin103.edelweislogistik.com/upload/service/<?= $s->image; ?>"
                                             class="img-fluid" alt="">
                                         <p class="mb-0 ms-4"><?= $s->nama; ?></p>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>
                         </div>
                     </div>
                 </div>

             </div>
             <div class="col-lg-8" data-aos="fade-up" data-aos-duration="2000">
                 <?= $website->description; ?>
             </div>
         </div>
     </div>
 </div>
 <!-- About End -->


 <div class="container-xxl px-0 why-us" id="about">
     <div class="container px-lg-5">
         <div class="text-heading text-center" data-aos="fade-up" data-aos-duration="2000">
             <h1>Why <span class="txt-blue">Us</span></h1>
         </div>
     </div>

     <div class="content">
         <div class="container">
             <div class="row">
                 <?php foreach ($fitur as $f) { ?>
                 <div class="col-lg-3 col-md-6 col-sm-6 col-12 mt-3" data-aos="fade-up" data-aos-duration="2000">
                     <div class="box-why-us">
                         <div class="row">
                             <div class="col-lg-4 col-md-4 col-sm-4 col-3">
                                 <div class="box-img btn p-2 bg-white d-flex align-items-center justify-content-center">
                                     <img src="https://admin103.edelweislogistik.com/upload/fitur/<?= $f->image; ?>"
                                         class="img-fluid" alt="">
                                 </div>
                             </div>
                             <div class="col-lg-8 col-md-8 col-sm-8 col-9">
                                 <div class="meta text-white">
                                     <h6 class="text-white"><?= $f->title; ?></h6>
                                     <p><?= $f->deskripsi; ?></p>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <?php } ?>
             </div>
         </div>
     </div>
 </div>

 <div class="container-xxl our-services px-0" id="services">
     <div class="container px-lg-5">
         <div class="text-heading text-center" data-aos="fade-up" data-aos-duration="2000">
             <h1 class="txt-blue">OUR SERVICES</h1>
         </div>
         <div class="row">
             <div class="col-lg-12">
                 <div class="slider-container mt-3" style="height: 100%;" data-aos="fade-up" data-aos-duration="2000">
                     <div class="swiper-container services-slider py-4" style="height: 100%;">
                         <div class="swiper-wrapper">

                             <?php foreach ($service as $s) { ?>

                             <div class="swiper-slide">
                                 <div class="service-box p-4 ">
                                     <h4 class="title mt-4 text-uppercase fw-bold"><?= $s->nama; ?></h4>
                                     <?= $s->deskripsi; ?>
                                     <div class="btn-klik text-center">
                                         <a href="https://wa.wizard.id/f165bb" target="_blank"
                                             class="border border-dark   mt-3 py-1 px-2 px-sm-4 rounded-1">Dapatkan
                                             Penawaran</a>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>

 <div class="container-xxl promo px-0">
     <img src="assets/imagenew/bg-promo.png" class="img-fluid bg" alt="">
     <div class="container py-5 px-lg-5">
         <div class="row">
             <div class="col-lg-6">

             </div>
             <div class="col-lg-6" data-aos="fade-right" data-aos-duration="2000">
                 <h3 class="text-white">Dapatkan promo pengiriman
                     menarik hari ini</h3>
                 <a href="https://wa.wizard.id/f165bb" target="_blank"
                     class="btn btn-light mt-lg-3 txt-blue py-1 px-4 px-sm-4 rounded-pill me-3 fw-bolder txt-blue">Dapatkan
                     Penawaran</a>
             </div>
         </div>
     </div>
 </div>

 <div class="container-xxl gallery px-0" id="gallery">
     <div class="container py-5 px-lg-5">
         <div class="text-heading text-center" data-aos="fade-up" data-aos-duration="2000">
             <h1>OUR <span class="txt-blue">GALLERIES</span></h1>
         </div>
         <div class="row">
             <?php foreach ($gallery as $g) { ?>
             <div class="col-lg-3 col-md-4 col-sm-4 col-6 mt-4">
                 <div class="gallery-box">
                     <div class="gallery-img">
                         <img src="https://admin103.edelweislogistik.com/upload/gallery/<?= $g->image; ?>"
                             class="img-fluid" alt="">
                     </div>
                     <div class="gallery-content text-center text-white">
                         <p class="mb-0"><?= $g->nama; ?></p>
                         <small class="fw-bold"><?= date('d F Y', strtotime($g->createDate)); ?></small>
                     </div>
                 </div>
             </div>
             <?php } ?>
         </div>
     </div>
 </div>


 <div class="container-xxl clients px-0" id="client">
     <div class="container px-lg-5">
         <div class="text-heading text-center" data-aos="fade-up" data-aos-duration="2000">
             <h1>OUR <span class="txt-blue">CLIENTS</span></h1>
         </div>
         <div class="slider-container" data-aos="fade-up" data-aos-duration="2000">
             <div class="swiper-container client-slider">
                 <div class="swiper-wrapper">
                     <?php foreach ($client as $c) { ?>
                     <div class="swiper-slide d-flex justify-content-center align-items-center">
                         <div class="client-img d-flex justify-content-center align-items-center">
                             <img src="https://admin103.edelweislogistik.com/upload/client/<?= $c->image; ?>"
                                 title="<?= $c->nama; ?>" class="img-fluid" alt="">
                         </div>
                     </div>
                     <?php } ?>
                 </div>
                 <div class="swiper-button-next"></div>
                 <div class="swiper-button-prev"></div>
             </div>
         </div>
     </div>
 </div>

 <div class="container-xxl testimoni px-0" id="client">
     <div class="container px-lg-5">
         <div class="text-heading text-center" data-aos="fade-up" data-aos-duration="2000">
             <h1 class="txt-blue">TESTIMONI</h1>
         </div>
         <div class="row">
             <div class="col-lg-12">
                 <div class="slider-container" data-aos="fade-up" data-aos-duration="2000">
                     <div class="swiper-container testimoni-slider">
                         <div class="swiper-wrapper">
                             <?php foreach ($testimoni as $t) { ?>
                             <div class="swiper-slide">
                                 <div class="testi-box">
                                     <div class="deskripsi">
                                         <?= $t->testi; ?>
                                     </div>
                                     <div class="d-flex align-items-center mt-4">
                                         <div class="border-img d-flex justify-content-center align-items-center me-4">
                                             <img src="https://admin103.edelweislogistik.com/upload/testimoni/<?= $t->image; ?>"
                                                 class="img-fluid" alt="">
                                         </div>
                                         <div class="profil">
                                             <p><?= $t->nama; ?></p>
                                             <span><?= $t->title; ?></span>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>
                         </div>
                         <div class="swiper-button-next"></div>
                         <div class="swiper-button-prev"></div>
                     </div>
                 </div>

             </div>
         </div>
     </div>
 </div>