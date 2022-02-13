<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

        <title>mybook.com</title>
         <meta charset="utf-8">
       
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">
		<%@ include file="titleLogo.jsp" %>
        <!-- Favicon -->
        
        <link href="img/favicon.ico" rel="icon">
		<!-- Template Javascript -->
        <script src="js/main.js"></script>
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Nunito:600,700" rel="stylesheet"> 
        
        <!-- CSS Libraries -->
     	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    
        <!-- Template Stylesheet -->
        <link href="css/index.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style1.css"/>
        
</head>
<body>
	
	
	<%@ 
			include file="navbar.jsp" 
		%>
		
		<div class="" style="width:100%">
	      <img class="d-block" id="slider_img" src="images/home-book.jpg" alt="First slide" style="width:100%;max-height: 650px">
	      <div class="carousel-caption d-none d-md-block">
		    <h1 style="color: white;font-weight: bolder;color: white;text-shadow: 4px 4px black;">Best <span>Quality</span> Books</h1>
             <p style="color: black;font-weight: bolder;">
                 Lorem ipsum dolor sit amet elit. Phasellus ut mollis mauris. Vivamus egestas eleifend dui ac consequat at lectus in malesuada
             </p>
             <div class="carousel-btn">
                 <a class="btn custom-btn" href="">View Books</a>
                 <a class="btn custom-btn" href="">Order Books</a>
             </div>
		  </div>
	    </div>
		
		
		
        <!-- Carousel Start -->
        <!-- 
        <div class="carousel">
            <div class="container-fluid">
                <div class="owl-carousel">
                    <div class="carousel-item">
                        <div class="carousel-img">
                            <img  src="https://cdn.pixabay.com/photo/2015/03/26/09/44/woman-690216_960_720.jpg" alt="mybook.com">
                            
                        </div>
                        <div class="carousel-text">
                            <h1>Best <span>Quality</span> Ingredients</h1>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasellus ut mollis mauris. Vivamus egestas eleifend dui ac consequat at lectus in malesuada
                            </p>
                            <div class="carousel-btn">
                                <a class="btn custom-btn" href="">View Books</a>
                                <a class="btn custom-btn" href="">Order Books</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-img">
                            <img src="https://cdn.pixabay.com/photo/2018/05/28/11/51/woman-3435842__340.jpg" alt="mybook.com">
                          
                        </div>
                        <div class="carousel-text">
                            <h1>World’s <span>Best</span> Chef</h1>
                            <p>
                                Morbi sagittis turpis id suscipit feugiat. Suspendisse eu augue urna. Morbi sagittis, orci sodales varius fermentum, tortor
                            </p>
                            <div class="carousel-btn">
                                <a class="btn custom-btn" href="">View Books</a>
                                <a class="btn custom-btn" href="">Order Books</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-img">
                        	
                          <img src="https://cdn.pixabay.com/photo/2019/04/17/10/46/book-4133883__340.jpg" alt="mybook.com"> 
                         
                        </div>
                        <div class="carousel-text">
                            <h1>Fastest Book <span>Delivery</span></h1>
                            <p>
                                Sed ultrices, est eget feugiat accumsan, dui nibh egestas tortor, ut rhoncus nibh ligula euismod quam. Proin pellentesque odio
                            </p>
                            <div class="carousel-btn">
                                <a class="btn custom-btn" href="">View Books</a>
                                <a class="btn custom-btn" href="">Order Books</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         -->
      <!-- Carousel End -->
       
     
  
        <!-- Booking Start -->
        <div class="booking">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7">
                       <div class="booking-content">
                            <div class="section-header">
                                <p></p>
                                <h2>Reading is essential for those who seek to rise Above the ordinary</h2>
                            </div>
                            <div class="about-text">
                                <p>
                                    I think we ought to read only the kind of books that wound or stab us.If the Book
                                    we're reading doesn't wake up with a blow to the haed,what are we reading for?So that it
                                    will make us happy,as you write? Good Lord,we would be happy precisely if we had no books,and 
                                    the kind of books that amke us happy are the kind we could write ourselves if we could write
                                    ourselves if we had to.But we need books that affect us like a disaster,that affect us 
                                    like a disaster,that grieve us deeply,like the death of someone we loved more than ourselves
                                    ,like being banished into forests far from everyone,like a suicide.A book must be the axe for the frozen
                                    sea within us.That is my belief.
                                </p>
                                <p>
                                    Its never too late(or early) to expamd your horizons and start reading,and reading
                                    books is even good for your physical and mental health.So star turning those Pages
                                    and getting inspired through reading today.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="booking-form">
                            <form>
                                <div class="control-group">
                                    <div class="input-group col-lg-12 col-md-12 col-sm-12">
                                        <input type="text" class="form-control" placeholder="Name" required="required" />
                                        <div class="input-group-append">
                                            <div class="input-group-text"><i class="far fa-user"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="input-group col-lg-12 col-md-12 col-sm-12">
                                        <input type="email" class="form-control" placeholder="Email" required="required" />
                                        <div class="input-group-append">
                                            <div class="input-group-text"><i class="far fa-envelope"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="input-group col-lg-12 col-md-12 col-sm-12">
                                        <input type="text" class="form-control" placeholder="Mobile" required="required" />
                                        <div class="input-group-append">
                                            <div class="input-group-text"><i class="fa fa-mobile-alt"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="input-group date col-lg-12 col-md-12 col-sm-12" id="date" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input" placeholder="Date" data-target="#date" data-toggle="datetimepicker"/>
                                        <div class="input-group-append" data-target="#date" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="far fa-calendar-alt"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="input-group time col-lg-12 col-md-12 col-sm-12" id="time" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input" placeholder="Time" data-target="#time" data-toggle="datetimepicker"/>
                                        <div class="input-group-append" data-target="#time" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="far fa-clock"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="input-group col-lg-12 col-md-12 col-sm-12">
                                        <select class="custom-select form-control">
                                            <option selected>Guest</option>
                                            <option value="1">1 Guest</option>
                                            <option value="2">2 Guest</option>
                                            <option value="3">3 Guest</option>
                                            <option value="4">4 Guest</option>
                                            <option value="5">5 Guest</option>
                                            <option value="6">6 Guest</option>
                                            <option value="7">7 Guest</option>
                                            <option value="8">8 Guest</option>
                                            <option value="9">9 Guest</option>
                                            <option value="10">10 Guest</option>
                                        </select>
                                        <div class="input-group-append">
                                            <div class="input-group-text"><i class="fa fa-chevron-down"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button class="btn custom-btn col-lg-12 col-md-12 col-sm-12" type="submit">Order Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Booking End -->
        

        <!-- About Start -->
        <div class="about">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="about-img">
                         <!--    <img src="images/firdaus.jpg" alt="Image">  -->
                            <iframe class="col-sm-12 col-md-12 col-lg-12" style="border-radius: 10%" max-width="560" height="315" src="https://www.youtube.com/embed/t5b20oLaIaw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                          <!--  <button type="button" class="btn-play" data-toggle="modal" data-src="https://www.youtube.com/embed/DWRcNpR6Kdc" data-target="#videoModal">  --> 
                                <span></span>
                            </button>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-content">
                            <div class="section-header">
                                <p>About Us</p>
                                <h2>Books Delivery Since 2020</h2>
                            </div>
                            <div class="about-text">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.
                                </p>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. Aenean consectetur convallis porttitor. Aliquam interdum at lacus non blandit.
                                </p>
                                <a class="btn custom-btn" href="">Book A Table</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->
        
        
        <!-- Video Modal Start-->
        <div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>        
                        <!-- 16:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="" id="video"  allowscriptaccess="always" allow="autoplay"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <!-- Video Modal End -->
        
        
        <!-- Feature Start -->
        <div class="feature">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="section-header">
                            <p>Why Choose Us</p>
                            <h2>Our Key Features</h2>
                        </div>
                        <div class="feature-text">
                            <div class="feature-img">
                                <div class="row">
                                    <div class="col-6">
                                        <img style="height: 120px;" src="https://cdn.pixabay.com/photo/2017/04/18/07/20/old-2238062__340.jpg" alt="">
                                       <!-- <img src="img/feature-1.jpg" alt="Image"> -->
                                    </div>
                                    <div class="col-6">
                                        <img style="height: 120px;" src="https://cdn.pixabay.com/photo/2017/10/21/16/23/book-2875123__340.jpg" alt="">
                                        
                                       <!-- <img src="img/feature-2.jpg" alt="Image"> -->
                                    </div>
                                    <div class="col-6">
                                        <img style="height: 120px;" src="https://cdn.pixabay.com/photo/2016/03/05/10/37/old-books-1237532__340.jpg" alt="">
                                        
                                       <!-- <img src="img/feature-3.jpg" alt="Image">-->
                                    </div>
                                    <div class="col-6">
                                        <img style="height: 120px;" src="https://cdn.pixabay.com/photo/2017/10/19/01/54/open-book-2866210__340.jpg" alt="">
                                       <!-- <img src="img/feature-4.jpg" alt="Image">-->
                                    </div>
                                </div>
                            </div>
                             <p>
                                Focus on your product or service’s most compelling benefits as you communicate with your target audience---then, make sure you deliver on your promises. 
                            </p>
                            <a class="btn custom-btn" href="">Book A Cake</a>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="feature-item">
                                    <i class="flaticon-cooking"></i>
                                    <h3>Effective communication</h3>
                                    <p>
                                        A well-implemented live chat is a great feature to have. Shopping is always easier and more enjoyable when you have a friendly assistant to rely on when you need help with the choices or whatever issues you may have encountered when browsing through the wares.
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="feature-item">
                                    <i class="flaticon-vegetable"></i>
                                    <h3>Attractive and SEO-friendly content</h3>
                                    <p>
                                        Looks aren’t everything but they sure do play a major role in your customer’s decision to order. You should provide appealing, high-resolution product images with multiple viewing angles and the ability to zoom in followed by vivid yet SEO-friendly product descriptions that tell your customers all the important details about the product while generating traffic to your online store.
                                    </p>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="feature-item">
                                    <i class="flaticon-medal"></i>
                                    <h3>Fast and easy checkout</h3>
                                    <p>
                                        The shopping cart is the integral, most important part of every online store. It’s the place where the final consideration happens, where your customers make their final decision whether to buy the product or drop it. Here, even the slightest concern or misunderstanding can lead to cart abandonment.
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="feature-item">
                                    <i class="flaticon-meat"></i>
                                    <h3>User-friendly catalog management</h3>
                                    <p>
                                        The ability to find something fast and without trouble is probably one of the most important features an online store should have if it wants to stand up to the competition. Provide your customers with easy to navigate search functionality that includes clear-cut categories, precise sorting tools, and smart attribute filters.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="feature-item">
                                    <i class="flaticon-courier"></i>
                                    <h3>Best quality</h3>
                                    <p>
                                       We provide the best with reasonable price.
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="feature-item">
                                    <i class="flaticon-fruits-and-vegetables"></i>
                                    <h3>Fastest door delivery</h3>
                                    <p>
                                        Delivery drivers collect items and transport them to their destinations.Highly responsible & reliable. Ability to work well under pressure in a fast-paced environment. Ability to work cohesively as part of a team.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Feature End -->
        
        
        <!-- Food Start -->
        <div class="food">
            <div class="container">
                <div class="row align-items-center">
                     <div class="col-md-4">
                        <div class="food-item">
                            <i class="fas fa-book-reader"></i>
                            <h2>Fiction Books</h2>
                            <p>
                                Fiction books contain a story that the author made up, such as romance or children's books. The most commonly read works are works of fiction. Perhaps some of their elements are based on hints of truth, but they have been elaborated, fabricated, and used to embellish into a new story. 
                            </p>
                            <a href="">View Menu</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="food-item">
                           <i class="fab fa-phoenix-framework"></i>
                            <h2>Memoir</h2>
                            <p>
                                Memoirs are one type of autobiography. In this type of book, the author puts emphasis on specific moments or events that brought about specific life lessons. A popular example of a memoir is Becoming by Michelle Obama. 
                            </p>
                            <a href="">View Menu</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="food-item">
                            <i class="fas fa-balance-scale-right"></i>
                            <h2>Crime Thriller</h2>
                            <p>
                                Thrillers are suspenseful stories, which makes a crime thriller a book that has a crime as its main subject while keeping readers on edge. The main characters are often fighting for justice. John Grisham is a well-known crime thriller author. 
                            </p>
                            <a href="">View Menu</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Food End -->
        
        
        <!-- Menu Start -->
        <div class="menu">
            <div class="container">
                <div class="section-header text-center">
                    <p>Books</p>
                    <h2>Our Collections</h2>
                </div>
                <div class="menu-tab">
                    <ul class="nav nav-pills justify-content-center">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#burgers">Most Popular</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#snacks">Featured</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#beverages">Classic</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="burgers" class="container tab-pane active">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Revolution 2020</span> <strong>$9.00</strong></h3>
                                            <p>A story about childhood friends Gopal, Raghav and Aarti who struggle to find success and love in Varanasi. However, it isn’t easy to achieve this in an unfair society that rewards the corrupt.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Rain in the Mountains</span> <strong>$11.00</strong></h3>
                                            <p>Rain in the Mountains brings together some of Ruskin Bond’s most beautiful works from his years spent in the foothills of the Himalayas in the town of Mussoorie. </p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The Algebra of Infinite Justice</span> <strong>$13.00</strong></h3>
                                            <p>The Algebra of Infinite Justice is a collection of essays written by Booker Prize winner Arundhati Roy.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The inheritance of Loss</span> <strong>$18.00</strong></h3>
                                            <p>The novel is less of a page-turning thriller and more a narrative built on descriptive prose.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The Alchemist</span> <strong>$22.00</strong></h3>
                                            <p>The Alchemist is a novel by Brazillian author Paulo Coelhothat was published in 1988.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The Book Theif</span> <strong>$26.00</strong></h3>
                                            <p>The Book Theif is a historial novel by the Australian author Markus Zusak.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Gone Girl</span> <strong>$30.00</strong></h3>
                                            <p>The Book is a written by Flynn, is an incredible thriller.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                <img alt="" src="https://images.pexels.com/photos/1907785/pexels-photo-1907785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500">
                                   
                                   <!-- <img src="img/menu-burger-img.jpg" alt="Image">-->
                                </div>
                            </div>
                        </div>
                        <div id="snacks" class="container tab-pane fade">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Revolution 2020</span> <strong>$9.00</strong></h3>
                                            <p>A story about childhood friends Gopal, Raghav and Aarti who struggle to find success and love in Varanasi. However, it isn’t easy to achieve this in an unfair society that rewards the corrupt.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Rain in the Mountains</span> <strong>$11.00</strong></h3>
                                            <p>Rain in the Mountains brings together some of Ruskin Bond’s most beautiful works from his years spent in the foothills of the Himalayas in the town of Mussoorie. </p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The Algebra of Infinite Justice</span> <strong>$13.00</strong></h3>
                                            <p>The Algebra of Infinite Justice is a collection of essays written by Booker Prize winner Arundhati Roy.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The inheritance of Loss</span> <strong>$18.00</strong></h3>
                                            <p>The novel is less of a page-turning thriller and more a narrative built on descriptive prose.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The Alchemist</span> <strong>$22.00</strong></h3>
                                            <p>The Alchemist is a novel by Brazillian author Paulo Coelhothat was published in 1988.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The Book Theif</span> <strong>$26.00</strong></h3>
                                            <p>The Book Theif is a historial novel by the Australian author Markus Zusak.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Gone Girl</span> <strong>$30.00</strong></h3>
                                            <p>The Book is a written by Flynn, is an incredible thriller.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                     <img src="https://images.pexels.com/photos/3989751/pexels-photo-3989751.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                </div>
                            </div>
                        </div>
                        <div id="beverages" class="container tab-pane fade">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Revolution 2020</span> <strong>$9.00</strong></h3>
                                            <p>A story about childhood friends Gopal, Raghav and Aarti who struggle to find success and love in Varanasi. However, it isn’t easy to achieve this in an unfair society that rewards the corrupt.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Rain in the Mountains</span> <strong>$11.00</strong></h3>
                                            <p>Rain in the Mountains brings together some of Ruskin Bond’s most beautiful works from his years spent in the foothills of the Himalayas in the town of Mussoorie. </p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The Algebra of Infinite Justice</span> <strong>$13.00</strong></h3>
                                            <p>The Algebra of Infinite Justice is a collection of essays written by Booker Prize winner Arundhati Roy.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The inheritance of Loss</span> <strong>$18.00</strong></h3>
                                            <p>The novel is less of a page-turning thriller and more a narrative built on descriptive prose.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The Alchemist</span> <strong>$22.00</strong></h3>
                                            <p>The Alchemist is a novel by Brazillian author Paulo Coelhothat was published in 1988.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>The Book Theif</span> <strong>$26.00</strong></h3>
                                            <p>The Book Theif is a historial novel by the Australian author Markus Zusak.</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                                            <!--<img src="img/menu-burger.jpg" alt="Image">-->
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Gone Girl</span> <strong>$30.00</strong></h3>
                                            <p>The Book is a written by Flynn, is an incredible thriller.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                    <img src="https://images.pexels.com/photos/4899925/pexels-photo-4899925.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="Image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Menu End -->
        
        
        <!-- Team Start -->
        <div class="team">
            <div class="container">
                <div class="section-header text-center">
                    <p>Our Team</p>
                    <h2>Our Developers</h2>
                </div>
                <div class="row">
                	 <div class="col-lg-3 col-md-6">
                        <div class="team-item" style="text-align: center;">
                            <div class="team-img">
                                <img style="max-height: 250px;max-width: 250px;"  src="https://scontent.fccu3-1.fna.fbcdn.net/v/t1.6435-9/173405868_1867028740121785_5085967100899876779_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=_crS9-WHvyEAX8FKxET&_nc_ht=scontent.fccu3-1.fna&oh=5c1eca07daae21c7a5b71f1117797d92&oe=616D79CB" alt="Image">
                                <div class="team-social">
                                    <a href=""><i class="fab fa-github"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h2>Anup kumar Sir</h2>
                                <p>Senior Developer</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item" style="text-align: center;">
                            <div class="team-img">
                                <img style="max-height: 250px;max-width: 250px;"   src="images/firdaus.jpg" alt="Image">
                                <div class="team-social">
                                    <a href="https://github.com/firdaus-ahmed-siddiqui"><i class="fab fa-github"></i></a>
                                    <a href="https://www.facebook.com/firdaus.ahmed.sidd/"><i class="fab fa-facebook-f"></i></a>
                                    <a href="https://www.linkedin.com/in/firdaus-ahmed-siddiqui-b68172186/"><i class="fab fa-linkedin-in"></i></a>
                                    <a href="https://www.instagram.com/firdaus_ahmed_sidd/"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h2>Firdaus Siddiqui</h2>
                                <p>Developer</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item" style="text-align: center;">
                            <div class="team-img">
                                <img  style="max-height: 250px;max-width: 250px;"  src="images/safa.jpg" alt="Image">
                                <div class="team-social">
                                    <a href=""><i class="fab fa-github"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h2>Safa Marium</h2>
                                <p>Developer</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item" style="text-align: center;">
                            <div class="team-img">
                                <img  style="max-height: 250px;max-width: 250px;"    src="images/rahul.jpg" alt="Image">
                                
                                <div class="team-social">
                                    <a href="https://github.com/Rahul-web-coder/"><i class="fab fa-github"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href="https://www.linkedin.com/in/rahul-mahto-62a530198/"><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h2>Rahul Mahato</h2>
                                <p>Developer</p>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- Team End -->
        
        
        <!-- Testimonial Start -->
        <div class="testimonial">
            <div class="container">
                <div class="owl-carousel testimonials-carousel">
                    <div class="testimonial-item">
                        <div class="testimonial-img">
                            <img src="img/testimonial-1.jpg" alt="Image">
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet elit. Phasel nec preti mi. Curabit facilis ornare velit non vulput
                        </p>
                        <h2>Client Name</h2>
                        <h3>Profession</h3>
                    </div>
                    <div class="testimonial-item">
                        <div class="testimonial-img">
                            <img src="img/testimonial-2.jpg" alt="Image">
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet elit. Phasel nec preti mi. Curabit facilis ornare velit non vulput
                        </p>
                        <h2>Client Name</h2>
                        <h3>Profession</h3>
                    </div>
                    <div class="testimonial-item">
                        <div class="testimonial-img">
                            <img src="img/testimonial-3.jpg" alt="Image">
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet elit. Phasel nec preti mi. Curabit facilis ornare velit non vulput
                        </p>
                        <h2>Client Name</h2>
                        <h3>Profession</h3>
                    </div>
                    <div class="testimonial-item">
                        <div class="testimonial-img">
                            <img src="img/testimonial-4.jpg" alt="Image">
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet elit. Phasel nec preti mi. Curabit facilis ornare velit non vulput
                        </p>
                        <h2>Client Name</h2>
                        <h3>Profession</h3>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->
        
        
        <!-- Contact Start -->
        <div class="contact">
            <div class="container">
                <div class="section-header text-center">
                    <p>Contact Us</p>
                    <h2>Contact For Any Query</h2>
                </div>
                <div class="row align-items-center contact-information">
                    <div class="col-md-6 col-lg-3">
                        <div class="contact-info">
                            <div class="contact-icon">
                                <i class="fa fa-map-marker-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Address</h3>
                                <p>123 Street, NY, USA</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="contact-info">
                            <div class="contact-icon">
                                <i class="fa fa-phone-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Call Us</h3>
                                <p>+012 345 6789</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="contact-info">
                            <div class="contact-icon">
                                <i class="fa fa-envelope"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Email Us</h3>
                                <p>info@example.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="contact-info">
                            <div class="contact-icon">
                                <i class="fa fa-share"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Follow Us</h3>
                                <div class="contact-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-youtube"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row contact-form">
                    <div class="col-md-6">
                    	<!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1036728.4719030706!2d87.66027499668812!3d22.748751986280435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f882db4908f667%3A0x43e330e68f6c2cbc!2sKolkata%2C%20West%20Bengal!5e0!3m2!1sen!2sin!4v1632210516155!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe> -->
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1036728.4719030706!2d87.66027499668812!3d22.748751986280435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f882db4908f667%3A0x43e330e68f6c2cbc!2sKolkata%2C%20West%20Bengal!5e0!3m2!1sen!2sin!4v1632210516155!5m2!1sen!2sin" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                    <div class="col-md-6">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                            <div class="control-group">
                                <input type="text" class="form-control" id="name" placeholder="Your Name" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="email" class="form-control" id="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="email" class="form-control" id="email" placeholder="Your Mobile" required="required" data-validation-required-message="Please enter your phone no" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control" id="subject" placeholder="Subject" required="required" data-validation-required-message="Please enter a subject" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <textarea class="form-control" id="message" placeholder="Message" required="required" data-validation-required-message="Please enter your message"></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div>
                                <button class="btn custom-btn" type="submit" id="sendMessageButton">Send Message</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->


        <!-- Blog Start -->
        <div class="blog">
            <div class="container">
                <div class="section-header text-center">
                    <p>Books Blog</p>
                    <h2>Latest From Our Collection</h2>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="https://cdn.pixabay.com/photo/2015/10/22/17/28/stack-of-books-1001655_960_720.jpg" alt="">
                               <!-- <img src="img/blog-1.jpg" alt="Blog"> -->
                            </div>
                             <div class="blog-content">
                                <h2 class="blog-title">Benefits of reading</h2>
                                <div class="blog-meta">
                                    <p><i class="far fa-user"></i>Admin</p>
                                    <p><i class="far fa-list-alt"></i>Book</p>
                                    <p><i class="far fa-calendar-alt"></i>01-Feb-2020</p>
                                    <p><i class="far fa-comments"></i>10</p>
                                </div>
                                <div class="blog-text">
                                    <p>
                                        Mental Stimulation,Your brain requires exercise to keep it strong and healthy, just like all muscles in your body. Reading has been found to enhance connectivity in the brain.Increases Empathy. Reading requires us to sympathize with character’s emotions. Being “emotionally transported” by a book has been shown to cause boosts in empathy.
                                    </p>
                                    <a class="btn custom-btn" href="">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="https://cdn.pixabay.com/photo/2014/08/08/21/03/bookshelf-413705__340.jpg" alt="">
                             <!--   <img src="img/blog-2.jpg" alt="Blog">-->
                            </div>
                            <div class="blog-content">
                                <h2 class="blog-title">Focus</h2>
                                <div class="blog-meta">
                                    <p><i class="far fa-user"></i>Admin</p>
                                    <p><i class="far fa-list-alt"></i>Book</p>
                                    <p><i class="far fa-calendar-alt"></i>01-Jan-2020</p>
                                    <p><i class="far fa-comments"></i>10</p>
                                </div>
                                <div class="blog-text">
                                    <p>
                                        Deep work is the ability to focus without distraction on a cognitively demanding task. It's a skill that allows you to quickly master complicated information and produce better results in less time. Deep work will make you better at what you do and provide the sense of true fulfillment that comes from craftsmanship."
                                    </p>
                                    <a class="btn custom-btn" href="">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog End -->


        <!-- Footer Start -->
        <!-- 
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="footer-contact">
                                    <h2>Our Address</h2>
                                    <p><i class="fa fa-map-marker-alt"></i>123 Street, New York, USA</p>
                                    <p><i class="fa fa-phone-alt"></i>+012 345 67890</p>
                                    <p><i class="fa fa-envelope"></i>info@example.com</p>
                                    <div class="footer-social">
                                        <a href=""><i class="fab fa-twitter"></i></a>
                                        <a href=""><i class="fab fa-facebook-f"></i></a>
                                        <a href=""><i class="fab fa-youtube"></i></a>
                                        <a href=""><i class="fab fa-instagram"></i></a>
                                        <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="footer-link">
                                    <h2>Quick Links</h2>
                                    <a href="">Terms of use</a>
                                    <a href="">Privacy policy</a>
                                    <a href="">Help</a>
                                    <a href="">FQAs</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="footer-newsletter">
                            <h2>Newsletter</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Quisque eu lectus a leo dictum nec non quam. Tortor eu placerat rhoncus, lorem quam iaculis felis, sed lacus neque id eros.
                            </p>
                            <div class="form">
                                <input class="form-control" placeholder="Email goes here">
                                <button class="btn custom-btn">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
         -->
        

        <%@ 
			include file="footer.jsp" 
		%>
	
		
		
		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
        
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/tempusdominus/js/moment.min.js"></script>
        <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
        
    	<script>
    		var images = [
    			"images/home-book.jpg",
    			"images/home-book2.jpg",
    			"images/spiderman-book.jpg"
    		];
    		var index = 0;
    		function slider()
    		{
    			var slider_img = document.getElementById("slider_img");
    			slider_img.src = images[index];
    			
    		}
    		
    		setInterval(() => {
    			slider();
    			index++;
    			if(index == 3)
   				{
   					index = 0;
   				}
			}, 3000);
    	</script>

        

</body>
</html>