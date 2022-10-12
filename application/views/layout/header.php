<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title><?= $website->metaTitle; ?></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="keywords" content="<?= $website->metaKeywords; ?>">
    <meta name="description" content="<?= $website->metaDescription; ?>">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="<?= base_url(); ?>assets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="<?= base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="<?= base_url(); ?>assets/css/style.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/css/swiper.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/css/responsive.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/css/whatsapp_chat.css" rel="stylesheet">
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="51">
    <div class="container-xxl bg-white p-0">

        <!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0" id="home">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <div class="container">
                    <a href="<?= base_url(); ?>" class="navbar-brand d-lg-none d-block p-0">
                        <!-- <h1 class="m-0">FitApp</h1> -->
                        <img class="img-fluid"
                            src="https://admin103.edelweislogistik.com/upload/<?= $website->image; ?>" alt="Logo">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="navbar-nav py-0">
                            <a href="#home" class="nav-item nav-link active">HOME</a>
                            <a href="#about" class="nav-item nav-link">ABOUT US</a>
                            <a href="#why-us" class="nav-item nav-link">WHY US</a>
                            <a href="#services" class="nav-item nav-link">OUR SERVICES</a>
                            <a href="#client" class="nav-item nav-link">OUR CLIENTS</a>
                            <a href="#gallery" class="nav-item nav-link">OUR GALLERIES</a>
                        </div>
                        <a href="<?= base_url(); ?>" class="navbar-brand d-lg-block d-none ms-auto">
                            <!-- <h1 class="m-0">FitApp</h1> -->
                            <img class="img-fluid"
                                src="https://admin103.edelweislogistik.com/upload/<?= $website->image; ?>" alt="Logo">
                        </a>
                        <div class="contact d-flex">
                            <img class="img-fluid" src="assets/imagenew/telpon-header.svg" alt="">
                            <div class="ms-2">
                                <?php
                                $number = $website->phone;
                                $n1 = substr($number, 0, 3);
                                $n2 = substr($number, 4, 4);
                                $n3 = substr($number, 8, 4);
                                $wa = $n1 . '-' . $n2 . '-' . $n3;
                                ?>
                                <p class="mb-0">Hubungi Kami</p>
                                <a href="https://wa.wizard.id/f165bb" target="_blank" class=""><?= $wa; ?></a>
                            </div>

                        </div>
                    </div>
                </div>
            </nav>

            <div class="container-xxl hero-header" id="home">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 col-md-7 text-center text-lg-start text-md-start">
                            <h1 class="mb-4 display-6" data-aos="fade-in" data-aos-duration="2000"><span
                                    class="txt-blue">Edelweis</span> Logistik</h1>
                            <h6 class="fw-bold" data-aos="fade-right" data-aos-duration="2000"><?= $homeweb->title; ?>
                            </h6>
                            <p class="mb-0" data-aos="fade-up" data-aos-duration="2000"><?= $homeweb->deskripsi; ?></p>
                            <p class="fw-bolder" data-aos="fade-up" data-aos-duration="2000"><?= $homeweb->kota; ?></p>

                            <div class="row mt-5">
                                <div class="col-xl-9 col-lg-10">
                                    <div class="d-flex justify-content-center align-items-center bg-blue py-3 px-4 px-md-3 me-3 fw-bolder txt-blue"
                                        data-aos="fade-right" data-aos-duration="2000">
                                        <a href="https://wa.wizard.id/f165bb" target="_blank"
                                            class="me-5 text-white">Dapatkan Penawaran Terbaik </a>
                                        <img src="assets/imagenew/penawaran.svg" class="img-fluid" alt="">
                                    </div>
                                    <div class="row mt-5 text-start">
                                        <?php foreach ($service as $s) { ?>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-12 px-3 mt-4" data-aos="fade-up"
                                            data-aos-duration="2000">
                                            <div class="d-flex">
                                                <img src="https://admin103.edelweislogistik.com/upload/service/<?= $s->image; ?>"
                                                    class="img-fluid fitur-header" alt="">
                                                <p class="text-uppercase ms-3 fs-6"><?= $s->nama; ?></p>
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
        </div>
        <!-- Navbar & Hero End -->
        <div class="line">

        </div>