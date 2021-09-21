<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Dashboard</title>
    
<link rel="stylesheet" href="css/home.css">

</head>
<body>

    <div class="main-container">
        <div class="sidebar">
            <div class="sidebar-brand">
                <h2><span class="las la-user-tie"></span> <span>STAFF</span></h2>
            </div>
            <!-- dashboard sections  -->
            <div class="sidebar-menu">
                <ul class="">
                    <li >
                        <a href="admin_dashboard_h.jsp" class="active "><span class="las la-home"></span>
                        <span >Dashboard</span></a>
                    </li>
                    <li>
                        <a href=""><span class="las la-address-card"></span>
                        <span>Profile</span></a>
                    </li>
                    <li>
                        <a href=""><span class="las la-user"></span>
                        <span>Add Event</span></a>
                    </li>
                    <li>
                        <a href=""><span class="las la-lightbulb"></span>
                        <span>Find One</span></a>
                    </li>
                    <li>
                        <a href=""><span class="las la-info"></span>
                        <span>Information</span></a>
                    </li>
                    <li>
                        <a href=""><span class="las la-search"></span>
                        <span>Search</span></a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- HEADER -->
        <header class="block">
            <ul class="header-menu horizontal-list">
                <li>
                    <a class="header-menu-tab" href="home.jsp"><span class="icon entypo-cog scnd-font-color"></span>HOME</a>
                </li>
                <li>
                    <a class="header-menu-tab" href="#2"><span class="icon fontawesome-user scnd-font-color"></span>Account</a>
                </li>
                <li>
                    <a class="header-menu-tab" href="#3"><span class="icon fontawesome-envelope scnd-font-color"></span>Messages</a>
                    <a class="header-menu-number" href="#4">5</a>
                </li>
                <li>
                    <a class="header-menu-tab" href="#5"><span class="icon fontawesome-star-empty scnd-font-color"></span>Favorites</a>
                </li>
            </ul>
            <div class="profile-menu">
                <p>Me <a href="#26"><span class="entypo-down-open scnd-font-color"></span></a></p>
                <div class="profile-picture small-profile-picture">
                    <img width="40px"  src="ss.jpg">
                </div>
            </div>
        </header>

        <!-- LEFT-CONTAINER -->
        <div class="left-container container">
            <div class="menu-box block"> <!-- MENU BOX (LEFT-CONTAINER) -->
                <h2 class="titular">MENU BOX</h2>
                <ul class="menu-box-menu">
                    <li>
                        <a class="menu-box-tab" href="#6"><span class="icon fontawesome-envelope scnd-font-color"></span>Messages<div class="menu-box-number">24</div></a>                            
                    </li>
                    <li>
                        <a class="menu-box-tab" href="#8"><span class="icon entypo-paper-plane scnd-font-color"></span>Invites<div class="menu-box-number">3</div></a>                            
                    </li>
                    <li>
                        <a class="menu-box-tab" href="#10"><span class="icon entypo-calendar scnd-font-color"></span>Events<div class="menu-box-number">5</div></a>                            
                    </li>
                    <li>
                        <a class="menu-box-tab" href="#12"><span class="icon entypo-cog scnd-font-color"></span>Account Settings</a>
                    </li>
                    <li>
                        <a class="menu-box-tab" href="#13"><sapn class="icon entypo-chart-line scnd-font-color"></sapn>Statistics</a>
                    </li>                        
                </ul>
            </div>
            <div class="donut-chart-block block"> <!-- DONUT CHART BLOCK (LEFT-CONTAINER) -->
                <h2 class="titular">OS AUDIENCE STATS</h2>
                <div class="donut-chart">
                    <!-- DONUT-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                    <div id="porcion1" class="recorte"><div class="quesito ios" data-rel="21"></div></div>
                    <div id="porcion2" class="recorte"><div class="quesito mac" data-rel="39"></div></div>
                    <div id="porcion3" class="recorte"><div class="quesito win" data-rel="31"></div></div>
                    <div id="porcionFin" class="recorte"><div class="quesito linux" data-rel="9"></div></div>
                    <!-- END DONUT-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->    
                    <p class="center-date">JULY<br><span class="scnd-font-color">2021</span></p> 
                </div>
                <ul class="os-percentages horizontal-list">
                    <li>
                        <p class="ios os scnd-font-color">iOS</p>
                        <p class="os-percentage">21<sup>%</sup></p>
                    </li>
                    <li>
                        <p class="mac os scnd-font-color">Mac</p>
                        <p class="os-percentage">48<sup>%</sup></p>
                    </li>
                    <li>
                        <p class="linux os scnd-font-color">Linux</p>
                        <p class="os-percentage">9<sup>%</sup></p>
                    </li>
                    <li>
                        <p class="win os scnd-font-color">Win</p>
                        <p class="os-percentage">32<sup>%</sup></p>
                    </li>
                </ul>
            </div>
            <div class="line-chart-block block clear"> <!-- LINE CHART BLOCK (LEFT-CONTAINER) -->
                <div class="line-chart">
                  <!-- LINE-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                    <div class='grafico'>
                       <ul class='eje-y'>
                         <li data-ejeY='30'></li>
                         <li data-ejeY='20'></li>
                         <li data-ejeY='10'></li>
                         <li data-ejeY='0'></li>
                       </ul>
                       <ul class='eje-x'>
                         <li>Apr</li>
                         <li>May</li>
                         <li>Jun</li>
                       </ul>
                         <span data-valor='25'>
                           <span data-valor='8'>
                             <span data-valor='13'>
                               <span data-valor='5'>   
                                 <span data-valor='23'>   
                                 <span data-valor='12'>
                                     <span data-valor='15'>
                                     </span></span></span></span></span></span></span>
                    </div>
                    <!-- END LINE-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                </div>
                <ul class="time-lenght horizontal-list">
                    <li><a class="time-lenght-btn" href="#14">Week</a></li>
                    <li><a class="time-lenght-btn" href="#15">Month</a></li>
                    <li><a class="time-lenght-btn" href="#16">Year</a></li>
                </ul>
                <ul class="month-data clear">
                    <li>
                        <p>APR<span class="scnd-font-color"> 2021</span></p>
                        <p><span class="entypo-plus increment"> </span>21<sup>%</sup></p>
                    </li>
                    <li>
                        <p>MAY<span class="scnd-font-color"> 2021</span></p>
                        <p><span class="entypo-plus increment"> </span>48<sup>%</sup></p>
                    </li>
                    <li>
                        <p>JUN<span class="scnd-font-color"> 2021</span></p>
                        <p><span class="entypo-plus increment"> </span>35<sup>%</sup></p>
                    </li>
                </ul>
                
            </div>
            <div class="media block"> <!-- MEDIA (LEFT-CONTAINER) -->
                <div id="media-display">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, suscipit ullam perspiciatis quae necessitatibus aliquid reprehenderit quasi aut pariatur recusandae repudiandae vel provident, laudantium vitae repellendus laboriosam quisquam eius magni.</p>
                </div>
                <div class="media-control-bar">
                    <p class="time-passed">KNOWLEDGE PARTNERS</p>
                </div>
            </div>
            <ul class="social horizontal-list block"> <!-- SOCIAL (LEFT-CONTAINER) -->
                <li class="facebook"><p class="icon"><span class="zocial-facebook"></span></p><p class="number">248k</p></li>
                <li class="twitter"><p class="icon"><span class="zocial-twitter"></span></p><p class="number">30k</p></li>
                <li class="googleplus"><p class="icon"><span class="zocial-googleplus"></span></p><p class="number">124k</p></li>
                <li class="mailbox"><p class="icon"><span class="fontawesome-envelope"></span></p><p class="number">89k</p></li>
            </ul>
        </div>

        <!-- MIDDLE-CONTAINER -->
        <div class="middle-container container">
            <div class="profile block"> <!-- PROFILE (MIDDLE-CONTAINER) -->
                <a class="add-button" href="#28"><span class="icon entypo-plus scnd-font-color"></span></a>
                <div class="profile-picture big-profile-picture clear">
                    <img width="150px" alt="" src="images/firdaus.jpg" >
                </div>
                <h1 class="user-name">STAFF NAME</h1>
                <div class="profile-description">
                    <p class="scnd-font-color" style="color: white">STAFF BIO</p>
                </div>

                </ul>
            </div>
            <div class="weather block clear"> 
                <h2 class="titular"><span class="icon entypo-location"></span><strong>SALES </strong>/MARKETING</h2>
                <div class="current-day">
                    <p class="current-day-date">SOME INFO</p>
                </div>
                <ul class="next-days">
                    <li>
                        <a href="#43">
                            <p class="next-days-date"><span class="day">SAT</span> <span class="scnd-font-color">29/06</span></p>
                            <p class="next-days-temperature">**<span class="icon icon-cloudy scnd-font-color"></span></p>
                        </a>
                    </li>
                    <li>
                        <a href="#44">
                            <p class="next-days-date"><span class="day">Sun</span> <span class="scnd-font-color">30/06</span></p>
                            <p class="next-days-temperature">**<span class="icon icon-cloudy2 scnd-font-color"></span></p>
                        </a>
                    </li>
                    <li>
                        <a href="#45">
                            <p class="next-days-date"><span class="day">MON</span> <span class="scnd-font-color">01/07</span></p>
                            <p class="next-days-temperature">**<span class="icon icon-cloudy2 scnd-font-color"></span></p>
                        </a>
                    </li>
                    <li>
                        <a href="#46">
                            <p class="next-days-date"><span class="day">TUE</span> <span class="scnd-font-color">02/07</span></p>
                            <p class="next-days-temperature">**<span class="icon icon-cloudy scnd-font-color"></span></p>
                        </a>
                    </li>
                    <li>
                        <a href="#46">
                            <p class="next-days-date"><span class="day">WED</span> <span class="scnd-font-color">03/07</span></p>
                            <p class="next-days-temperature">**<span class="icon icon-cloudy scnd-font-color"></span></p>
                        </a>
                    </li>
                    <li>
                        <a href="#46">
                            <p class="next-days-date"><span class="day">THU</span> <span class="scnd-font-color">03/07</span></p>
                            <p class="next-days-temperature">**<span class="icon icon-cloudy scnd-font-color"></span></p>
                        </a>
                    </li>
                    
                </ul>
            </div>
            <div class="tweets block"> <!-- TWEETS (MIDDLE-CONTAINER) -->
                <h2 class="titular">USERS</h2>
                <div class="tweet first">
                    <p>Total Users <a class="tweet-link" href="#17">10000</a></p>
                    <br>
                    <button class ="req" ><a href = "#">Requests</a></button>
                    
                </div>
                <br>
               <a href="admin/emp-list.jsp"><h2 class="titular">STAFFS </h2></a> 
                <div class="tweet">
                    <p>Total Staffs<a class="tweet-link" href="#19">8554</a></p>
                   
                </div>
            </div> 
            <ul class="social block"> <!-- SOCIAL (MIDDLE-CONTAINER) -->
                <li><a href="#50"><div class="facebook icon"><span class="zocial-facebook"></span></div><h2 class="facebook titular">SHARE TO FACEBOOK</h2></li></a>
                <li><a href="#51"><div class="twitter icon"><span class="zocial-twitter"></span></div><h2 class="twitter titular">SHARE TO TWITTER</h2></li></a>
                <li><a href="#52"><div class="googleplus icon"><span class="zocial-googleplus"></span></div><h2 class="googleplus titular">SHARE TO GOOGLE+</h2></li></a>
            </ul>
        </div>

        <!-- RIGHT-CONTAINER -->
        <div class="right-container container">
            <div class="join-newsletter block"> <!-- JOIN NEWSLETTER (RIGHT-CONTAINER) -->
                <h2 class="titular">COMPLETE YOUR KYC </h2>
                <div class="input-container">
                </div>
                <a class="subscribe button" href="#21">CLICK HERE</a>
            </div>
            <div class="account block"> <!-- ACCOUNT (RIGHT-CONTAINER) -->
                <h2 class="titular">College Partners </h2>
                <div class="input-container">
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque tempora exercitationem minima delectus aut nihil, pariatur, animi, quod commodi fuga rerum! Provident ipsum soluta facilis nam, veritatis non incidunt ratione!</p>
                </div>
                <a class="sign-in button" href="#22">SEE ALL</a>
                <a class="fb-sign-in" href="58">
                </a>
            </div>
            <div class="loading block"> <!-- LOADING (RIGHT-CONTAINER) -->
                <div class="progress-bar downloading"></div>
                <p><span class="icon fontawesome-cloud-download scnd-font-color"></span>Downloading...</p>
                <p class="percentage">81<sup>%</sup></p>
                <div class="progress-bar uploading"></div>
                <p><span class="icon fontawesome-cloud-upload scnd-font-color"></span>Uploading...</p>
                <p class="percentage">43<sup>%</sup></p>
            </div>
            <div class="block calendar-day "> <!-- CALENDAR DAY (RIGHT-CONTAINER) -->
                <div class="arrow-btn-container block">
                    <a class="arrow-btn left" href="#200"><span class="icon fontawesome-angle-left"></span></a>
                    <h2 class="titular">WEDNESDAY</h2>
                    <a class="arrow-btn right" href="#201"><span class="icon fontawesome-angle-right"></span></a>
                </div>
                    <p class="the-day">26</p>
                    <a class="add-event button" href="#27">ADD EVENT</a>
            </div>
            <div class="calendar-month block"> <!-- CALENDAR MONTH (RIGHT-CONTAINER) -->
                <div class="arrow-btn-container">
                    <a class="arrow-btn left" href="#202"><span class="icon fontawesome-angle-left"></span></a>
                    <h2 class="titular">APRIL 20</h2>
                    <a class="arrow-btn right" href="#203"><span class="icon fontawesome-angle-right"></span></a>
                </div>
                <table class="calendar">
                    <thead class="days-week">
                        <tr>
                            <th>S</th>
                            <th>M</th>
                            <th>T</th>
                            <th>W</th>
                            <th>T</th>
                            <th>F</th>
                            <th>S</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a class="scnd-font-color" href="#100">1</a></td>
                        </tr>
                        <tr>
                            <td><a class="scnd-font-color" href="#101">2</a></td>
                            <td><a class="scnd-font-color" href="#102">3</a></td>
                            <td><a class="scnd-font-color" href="#103">4</a></td>
                            <td><a class="scnd-font-color" href="#104">5</a></td>
                            <td><a class="scnd-font-color" href="#105">6</a></td>
                            <td><a class="scnd-font-color" href="#106">7</a></td>
                            <td><a class="scnd-font-color" href="#107">8</a></td>
                        </tr>
                        <tr>
                            <td><a class="scnd-font-color" href="#108">9</a></td>
                            <td><a class="scnd-font-color" href="#109">10</a></td>
                            <td><a class="scnd-font-color" href="#110">11</a></td>
                            <td><a class="scnd-font-color" href="#111">12</a></td>
                            <td><a class="scnd-font-color" href="#112">13</a></td>
                            <td><a class="scnd-font-color" href="#113">14</a></td>
                            <td><a class="scnd-font-color" href="#114">15</a></td>
                        </tr>
                        <tr>
                            <td><a class="scnd-font-color" href="#115">16</a></td>
                            <td><a class="scnd-font-color" href="#116">17</a></td>
                            <td><a class="scnd-font-color" href="#117">18</a></td>
                            <td><a class="scnd-font-color" href="#118">19</a></td>
                            <td><a class="scnd-font-color" href="#119">20</a></td>
                            <td><a class="scnd-font-color" href="#120">21</a></td>
                            <td><a class="scnd-font-color" href="#121">22</a></td>
                        </tr>
                        <tr>
                            <td><a class="scnd-font-color" href="#122">23</a></td>
                            <td><a class="scnd-font-color" href="#123">24</a></td>
                            <td><a class="scnd-font-color" href="#124">25</a></td>
                            <td><a class="today" href="#125">26</a></td>
                            <td><a href="#126">27</a></td>
                            <td><a href="#127">28</a></td>
                            <td><a href="#128">29</a></td>
                        </tr>
                        <tr>
                            <td><a href="#129">30</a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div> <!-- end calendar-month block --> 
        </div> <!-- end right-container -->
    </div> <!-- end main-container -->
    
  
      
   		<!-------------------- footer ------------------->
				
		
</body>
</html>