(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();
    
    
    // Initiate the wowjs
    new WOW().init();


    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 45) {
            $('.navbar').addClass('sticky-top shadow-sm');
        } else {
            $('.navbar').removeClass('sticky-top shadow-sm');
        }
    });


    // Smooth scrolling on the navbar links
    $(".navbar-nav a").on('click', function (event) {
        if (this.hash !== "") {
            event.preventDefault();
            
            $('html, body').animate({
                scrollTop: $(this.hash).offset().top - 45
            }, 1500, 'easeInOutExpo');
            
            if ($(this).parents('.navbar-nav').length) {
                $('.navbar-nav .active').removeClass('active');
                $(this).closest('a').addClass('active');
            }
        }
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Facts counter
    $('[data-toggle="counter-up"]').counterUp({
        delay: 10,
        time: 2000
    });

new Swiper('.about-slider', {
    speed: 400,
    loop: true,
    autoplay: {
        delay: 5000,
        disableOnInteraction: false
      },
    slidesPerView: 1,
    spaceBetween: 100,
  });


  var cardSlider = new Swiper('.services-slider', {
    autoplay: {
        delay: 5000,
        disableOnInteraction: false
      },
    loop: true,
    // navigation: {
    //     nextEl: '.swiper-button-next',
    //     prevEl: '.swiper-button-prev'
    // },
    slidesPerView: 4,
    spaceBetween: 0,
    breakpoints: {
        // when window width is >= 480px
        480: {
            slidesPerView: 1,
            spaceBetween: 10
        },
        // when window width is >= 640px
        600: {
            slidesPerView: 1,
            spaceBetween: 10
        },
        767: {
            slidesPerView: 2,
            spaceBetween: 10
        },
        // when window is <= 991px
        991: {
            slidesPerView: 3,
            spaceBetween: 10,
        },
    }
});

  var cardSlider = new Swiper('.client-slider', {
    autoplay: {
        delay: 5000,
        disableOnInteraction: false
      },
    loop: true,
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev'
    },
    slidesPerView: 4,
    spaceBetween: 30,
    breakpoints: {
        // when window width is >= 480px
        480: {
            slidesPerView: 2,
            spaceBetween: 30
        },
        // when window width is >= 640px
        600: {
            slidesPerView: 3,
            spaceBetween: 30
        },
        767: {
            slidesPerView: 3,
            spaceBetween: 30
        },
        // when window is <= 991px
        991: {
            slidesPerView: 4,
            spaceBetween: 30,
        },
    }
});


  var cardSlider = new Swiper('.testimoni-slider', {
    autoplay: {
        delay: 5000,
        disableOnInteraction: false
      },
    loop: true,
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev'
    },
    slidesPerView: 3,
    spaceBetween: 30,
    breakpoints: {
        // when window width is >= 480px
        480: {
            slidesPerView: 1,
            spaceBetween: 0
        },
        // when window width is >= 640px
        600: {
            slidesPerView: 1,
            spaceBetween: 30
        },
        767: {
            slidesPerView: 1,
            spaceBetween: 30
        },
        // when window is <= 991px
        991: {
            slidesPerView: 2,
            spaceBetween: 30,
        },
        1200: {
            slidesPerView: 2,
            spaceBetween: 30,
        }
    }
});
AOS.init();
    
})(jQuery);

