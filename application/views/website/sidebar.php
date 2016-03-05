<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jQuery UI Menu - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

  <script>
  $(function() {
    $( "#menu" ).menu();
  });
  </script>
  <style>
  .ui-menu { width: 300px; 

   background: #FAFAFA;

  }
  .ui-menu li:hover{

    background: #2196F3;
    color:#ffffff;
    border: none;
  }
  li{
    
  }
  .fa{
     color: #2196F3;
  }
  #submenu{
    height:1.5em;
  }
  </style>
</head>
<body> 
 
<ul id="menu">
  
  <li id="submenu"><i class="fa fa-plug"></i>
  Electronics
    <ul>
      <li> Smart Phones</li>
      <li> Laptops</li>
      <li> Tablets</li>
      <li>Accessories</li>
      <li>Memory Cards</li>
          <li>Accesories 
          <ul>
            <li>Headphoness</li>
            <li>Speakers</li>
            <li>Sound</li>
            <li>Projectors</li>
            </ul>
     </li>
    </ul>
  </li>
  
  <li id="submenu"><i class="fa fa-tasks"></i> Hair and Beauty
    <ul >
      <li> Hair
        <ul>
          <li>Shampoos</li>
          <li>Shaving and hair Removal</li>
          <li>Hair Extensions and Wigs</li>
        </ul>
      </li>
      <li>Beauty
        <ul>
          <li>Nails</li>
          <li>Skin Care</li>
          <li>Fragrance and Deodrants</li>
          <li>Perfumes</li>
        </ul>
      </li>
      </ul>
    </li>
    <li id="submenu"> <i class="fa fa-tasks"></i> Agriculture
          <ul>
          <li>Maize</li>
          <li>Beans</li>
          <li>Milk</li>
          <li>Fertilizers</li>
        </ul>
    </li>

    <li id="submenu">  <i class="fa fa-tasks"></i> Education
          <ul>
          <li>Textbooks</li>
          <li>Pencils</li>
          <li>Uniforms</li>
          <li>Excercise Books</li>
        </ul>
    </li>
 <li id="submenu"><i class="fa fa-tasks"></i>Cleaning and Janitorial</li>
 <li id="submenu"><i class="fa fa-tasks"></i>Groceries
       <ul>
          <li>Tomatoes</li>
          <li>Cabagge</li>
          <li>Sukuma Wiki</li>
          <li>Carrots</li>
        </ul>

 </li>
 <li id="submenu"><i class="fa fa-tasks"></i>ChildCare and Schools</li>
 <li id="submenu"><i class="fa fa-tasks"></i>Restaurant and Hospitality</li>
 <li id="submenu"><i class="fa fa-tasks"></i>Corporate Business and Gifts</li>
</ul>

 
 
</body>
</html>