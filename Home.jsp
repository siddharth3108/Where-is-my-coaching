<%    
    boolean b=false;
    try
    {
     String s=(String)session.getAttribute("id");
    // out.println("Id="+s);
     if(s==null )
     {b=true;}
    }
    catch(Exception e)
    {
        
    }
    if(b)
    {
%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href='L1.css'>
        <title>Home</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark-bg-light" >
            <img src="Images/uprof.png" class="d-block" style="height:50px;width:50px" >
            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <div class="collapse navbar-collapse" id="navbarSupportedContent"  >
                <ul class="navbar-nav mr-auto"  >
                    <li class="nav-item dropdown">
                        <a style="color:gray;font-size: 20px; " class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            INSTITUTE CORNER
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style=" ">
                            <div style="padding: 2px;">
                            <a class="dropdown-item" style="background-color: gray ; " href="InstRegis.jsp">Register Your Institute</a>
                            </div>
                            <div style="padding: 2px;">
                            <a class="dropdown-item" style="background-color: orange" href="#">Manage Your Institute</a>
                            </div>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div> 

                    </li>
                    <li class="nav-item dropdown">
                        <a style="color:gray;font-size: 20px;" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            HELP DESK
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
  <!--------------------------------------------------------------------------------->              
                <nav aria-label="breadcrumb" style="height:30px;margin-top: -28px">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item" ><a style="font-size:21px;color:black;" href="StLogin.jsp">LogIn</a></li>
                        <li class="breadcrumb-item"><a style="font-size:21px;color:black;" href="StRegis.jsp">SignUp</a></li>
                    </ol>
                </nav>
 <!---------------------------------------------------------------------------------------> 
            </div>
        </nav>

        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images/ban7.jpg" class="d-block w-100" alt="..." style="width:1330px;height:250px" >
                    <!--                    <div class="carousel-caption d-none d-md-block">
                                            <h5>First slide label</h5>
                                            <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                        </div>-->
                </div>
                <div class="carousel-item">
                    <img src="Images/ban3.png" class="d-block w-100" alt="..." style="width:1330px;height:250px">
                    <!--                    <div class="carousel-caption d-none d-md-block">
                                            <h5>Second slide label</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                        </div>-->
                </div>
                <div class="carousel-item">
                    <img src="Images/ban6.jpg" class="d-block w-100" alt="..." style="width:1330px;height:250px">
                    <!--                    <div class="carousel-caption d-none d-md-block">
                                            <h5>Third slide label</h5>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                        </div>-->
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
   <!------------------------------------------------------------------------------------------------------------------>     
        <div class="jumbotron">
            <h1 class="display-4">Where Is My Coaching!</h1>
            <p class="lead" style="color:white">Want A Perfect Solution For Your Problem,Here We are For You</p>
            <hr class="my-4">
            <form action="Search.jsp">
                <select name="sub" style="width:600px;height:50px;border:none">
                     <option value="PROG" >Programming</option> 
                    <option value="UGPG">UG&PG</option> 
                    <option value="ART">Art&Craft</option> 
                    <option value="DANCE">DanceClasses</option> 
                    <option value="SCHOOL">SchoolTutuions</option> 
                </select>
                <input type="submit" class="btn btn-primary btn-lg" style="width:130px;height:50px;margin-top:-8px;border:none" value="Search">
                </form>
        </div>
        <div class="Card-Block">      
            <div class="card" style="width: 18rem;">
                <img src="Images/prog2.jpg" style="width:286px;height:210px;">
                <div class="card-body">
                    <h5 class="card-title">Learn Programming</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Click For More</a>
                </div>
            </div>
            <div class="card" style="width: 18rem;">
                <img src="Images/tution2.jpg" style="width:286px;height:210px;">
                <div class="card-body">
                    <h5 class="card-title">School Classes</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Click For More</a>
                </div>
            </div>
            <div class="card" style="width: 18rem;">
                <img src="Images/cultural1.jpg"  style="width:286px;height:210px;">
                <div class="card-body">
                    <h5 class="card-title">Cultural Activities</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Click For More</a>
                </div>
            </div>
        </div>


        <!-- Optional JavaScript 

        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
    </body>
</html>
<%}
else
{
response.sendRedirect("StHome.jsp");
}
%>