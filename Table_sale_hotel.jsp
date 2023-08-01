
<main class="st_viewport">
  <div class="st_wrap_table" data-table_id="0">
   <link rel="stylesheet" href="index_Style.css">
  <style>
  *{
  margin: 0;
  pading: 0;
  box-sizing: border-box;
}


.Table-data{
  	lign-content: center;
	max-width: 1068px;
	margin-left: auto;
	margin-right:auto;
	background-color: rgb(251, 255, 251);
  	font-family: sans-serif;
  	color: rgb(118, 26, 160);
 	margin-top: 3em;
  	width: 75vw;
  	overflow-x: hidden;
}
h1{
  font-weight: 400;
}
a{
  color: inherit;
}
p{
  margin-top: .7em;
}
.warning{
  color: rgb(62,148,236);
}
.st_viewport{
  max-height: 500px;
  overflow: auto;
}

[data-table_id="1"]{
  background-color: rgb(255,115,0);
}
[data-table_id="2"]{
  background-color: rgb(61,53,39);
  color: rgb(220,220,220);
}
[data-table_id="3"]{
  background-color: rgba(168,189,4, .8);
}

._rank{
  min-width: 80px;
}
._id{
  min-width: 60px;
}
._name{
  min-width: 130px;
}
._surname{
  min-width: 130px;
}
._year{
  min-width: 80px;
}
._section{
  min-width: 130px;
}

pre{
  overflow: auto;
}

/** Sticky table styles **/
.st_viewport{
  background-color: rgb(255, 255, 255);
  color: rgb(27,30,36);
  margin: 20px 0;
}
/* ###  Table wrap */
.st_wrap_table{
  
}
/* ##   header */
.st_table_header{
  position: -webkit-sticky;
  position: sticky;
  top: 0px;
  z-index: 1;
  background-color: rgb(27,30,36);
  color: rgb(220,220,220);
}
.st_table_header h2{
  font-weight: 400;
  margin: 0 20px;
  padding: 15px 100 0;
}
.st_table_header .st_row{
  color: rgba(220,220,220, .7);
  padding: 0px 5 10;
}
.st_table_header .st_column{
  
}
/* ##  table */
.st_table{
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column;
}
/* #   row */
.st_row{
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  margin: 10;
}
.st_table .st_row:nth-child(even){
  background-color: rgba(0,0,0, .1)
}
/* #   column */
.st_column{
  padding: 0px 60px;
}

.st_data{
padding:0px 50px ;
}

  </style>
   <!-- Navbar -->
    <header>
        <div class="nav container">
            <!-- Logo -->
            <a href="index.html" class="logo"><i class='bx bx-home'></i>home </a>
            <!-- Menu Icon -->
            <input type="checkbox" name="" id="menu">
            <label for="menu" ><i class='bx bx-menu' id="menu-icon"></i></label>
            <!-- Nav List -->
            <ul class="navbar">
                <li><a href="index.html">Home</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#sales">Sales</a></li>
                <li><a href="#properties">Properties</a></li>
            </ul>
            <!-- Dropdown start -->
				
            <!-- Dropdown end -->
            
            <!-- Log In Button -->
            <div class="Logintype">
            <a href="Login_user.html" class="btn">Log In</a>
           <!-- <div class="usertype">
            <a href="Login.html">Admin</a>
            <a href="Login.html">User</a>
            </div>
            </div>*/-->
            
        </div>
    </header>
    <!-- Navbar Ends-->
    <div class="Table-data">
    <header class="st_table_header">
      <h2>Book Your Favorite Hotel Bellow...</h2>
      <div class="st_row">
        <div class="st_column _name">Name</div>
        <div class="st_column _city">City</div>
        <div class="st_column _adress">Adress</div>
        <div class="st_column _room_type">Room_Type</div>
        <div class="st_column _contact">Contact</div>
        <div class="st_column _price">Price</div>
        
        
      </div>
    </header>
    <div class="st_table">
      <div class="st_row">
        <div class="st_data _name">Sadasib Padhy</div>
        <div class="st_data _city">Bhubaneswar</div>
        <div class="st_data _adress">Rasulgarh</div>
        <div class="st_data _room_type">Ac</div>
        <div class="st_data _contact">7064372828</div>
        <div class="st_data _price">8000</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">Max</div>
        <div class="st_column _surname">Luke</div>
        <div class="st_column _year">1971</div>
        <div class="st_column _section">USA</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">Jonas</div>
        <div class="st_column _surname">Kunze</div>
        <div class="st_column _year">2015</div>
        <div class="st_column _section">Germany</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">Janina</div>
        <div class="st_column _surname">Endres</div>
        <div class="st_column _year">1955</div>
        <div class="st_column _section">Belgium</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">Lena</div>
        <div class="st_column _surname">Eifel</div>
        <div class="st_column _year">1996</div>
        <div class="st_column _section">Germany</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">Jonas</div>
        <div class="st_column _surname">Nacht</div>
        <div class="st_column _year">1968</div>
        <div class="st_column _section">Swiss</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">Vanessa</div>
        <div class="st_column _surname">Schneider</div>
        <div class="st_column _year">2004</div>
        <div class="st_column _section">Russia</div>
      </div>
      
	<div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">laura</div>
        <div class="st_column _surname">Beike</div>
        <div class="st_column _year">1952</div>
        <div class="st_column _section">Sweden</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">laura</div>
        <div class="st_column _surname">Beike</div>
        <div class="st_column _year">1952</div>
        <div class="st_column _section">Sweden</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">laura</div>
        <div class="st_column _surname">Beike</div>
        <div class="st_column _year">1952</div>
        <div class="st_column _section">Sweden</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">laura</div>
        <div class="st_column _surname">Beike</div>
        <div class="st_column _year">1952</div>
        <div class="st_column _section">Sweden</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">laura</div>
        <div class="st_column _surname">Beike</div>
        <div class="st_column _year">1952</div>
        <div class="st_column _section">Sweden</div>
      </div>
      <div class="st_row">
        <div class="st_column _rank">0</div>
        <div class="st_column _name">laura</div>
        <div class="st_column _surname">Beike</div>
        <div class="st_column _year">1952</div>
        <div class="st_column _section">Sweden</div>
      </div>
      
    </div>
  </div>
</div>
  
</main>

 <!-- Footer -->
    <section class="footer">
        <div class="footer-container container">
            <h2>To-let Solution</h2>
            <div class="footer-box">
                <h3>Quick Links</h3>
                <a href="#">Agency</a>
                <a href="#">Building</a>
                <a href="#">Rates</a>
                
            </div>
            <div class="footer-box">
                <h3>Locations</h3>
                <a href="#">India</a>
                <a href="#">USA</a>
                <a href="#">New York</a>
                
            </div>
            <div class="footer-box">
                <h3>Contact</h3>
                <a href="#">7064372828</a>
                <a href="#">sadasibpadhy012@gmail.com</a>
                <div class="social">
                    <a href="#"><i class='bx bxl-facebook' ></i></a>
                    <a href="#"><i class='bx bxl-twitter' ></i></a>
                    <a href="#"><i class='bx bxl-instagram' ></i></a>
                </div>
            </div>
        </div>
    </section>
    <!-- Copyright -->
    <div class="copyright">
        <p>&#169; This Is Created By Mr.Sadasib Padhy</p>
    </div>