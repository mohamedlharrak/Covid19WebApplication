<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CovideApp.Index" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COVIDE MAROC</title>




    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="covid_website/style.css">
    <style>
        .home{
                background:url('covid_website/images/home-bg.jpg') no-repeat;

                background-size: cover;
                background-position: center;
                background-attachment: fixed;
            }
        .symptoms {
                        background: url('covid_website/images/background-img.jpg') no-repeat;

                        background-size: cover;
                        background-position: center;
                        background-attachment: fixed;
                    }
        .doctor{
                    background:url('covid_website/images/background-img.jpg') no-repeat;

                    background-size: cover;
                    background-position: center;
                    background-attachment: fixed;
                }
        .footer{
                    background:url('covid_website/images/background-img.jpg') no-repeat;
                    background-size: cover;
                    background-position: center;
                    background-attachment: fixed;
                }
    </style>
    <style>
        
  
  
    .txt{
    width: 100%;
    height: 100%;
    border: none;
    border-radius: 50px;
    background: #3c6382;
    color: rgb(251, 247, 247);
    outline: none;
    padding: 0 60px 0 20px;
    font-size: 18px;
    opacity: 0;
    transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
  }
 .txt.active{
    opacity: 1;
  }

  .search-box .search-icon{
    position: absolute;
    right: 0px;
    top: 50%;
    transform: translateY(-50%);
    height: 60px;
    width: 60px;
    background: #664AFF;
    border-radius: 50%;
    text-align: center;
    line-height: 60px;
    font-size: 22px;
    color: #ffffff;
    cursor: pointer;
    z-index: 1;
    transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
  }
  .search-box .search-icon.active{
    right: 5px;
    height: 50px;
    line-height: 50px;
    width: 50px;
    font-size: 20px;
    background: #664AFF;
    color: #fff;
    transform: translateY(-50%) rotate(360deg);
  }
  .search-box .cancel-icon{
    position: absolute;
    right: 20px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 25px;
    color: #664AFF;
    cursor: pointer;
    transition: all 0.5s 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
  }
  .search-box .cancel-icon.active{
    right: -40px;
    transform: translateY(-50%) rotate(360deg);
  }
  .search-box .search-data{
    text-align: center;
    padding-top: 7px;
    color: #fff;
    font-size: 18px;
    word-wrap: break-word;
  }
  .search-box .search-data.active{
    display: none;
  }

    </style>

</head>
<body>
    <script>
        window.onload = () => {
            if (window.history.replaceState) {
                window.history.replaceState(null, null, window.location.href);
            }
        }
        
    </script>
    <!-- header section starts  -->

    <header>

        <a href="#" class="logo">c<span class="fas fa-virus"></span>vid-19</a>

        <div id="menu" class="fas fa-bars"></div>

        <nav class="navbar">
            <a class="active" href="#home">Accueil</a>
            <a href="#prevent">Empêcher</a>
            <a href="#symptoms">Symptoms</a>
            <a href="#precautions">Précautions</a>
            <a href="#doctor">Equipe</a>
            <a href="#hand-wash">Lavage des mains</a>
            <a href="TrackingCovide.html">Corona tracking</a>
<%--            <a href="LogInFrm.aspx" target="_blank">LogIn</a>--%>

            
            
        </nav>

    </header>

    <!-- header section ends -->
    <!-- home section starts  -->

    <section class="home" id="home">

        <div class="content">
            <h1>Restez à la maison, restez en sécurité</h1>
            <h3>personnes vaccinées</h3>
            <form runat="server">
                        <div class="search-box">
                        <%--<input type="text" placeholder="CNIE De Partial..">--%>
                        <asp:TextBox ID="txtSearch" placeholder="CNIE De Partial.."  runat="server" class="txt" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                        <div class="search-icon">
                            <%--<i class="fas fa-search"></i>--%>
                            <%--<asp:LinkButton class="fas fa-search" ForeColor="White" ID="LinkButton1" runat="server"></asp:LinkButton>--%>
                            <asp:LinkButton  ForeColor="White" runat="server" ID="modify" text='<i  class="fas fa-search txtI" ></i>' OnClick="modify_Click" />
                            
                            
                        </div>
                        <div class="cancel-icon">
                            <i class="fas fa-times"></i>
                        </div>
                        <div class="search-data">
                        </div>
                    </div>
                    <script>
                        const searchBox = document.querySelector(".search-box");
                        const searchBtn = document.querySelector(".search-icon");
                        const cancelBtn = document.querySelector(".cancel-icon");
                        const searchInput = document.querySelector(".txt");
                        const searchData = document.querySelector(".search-data");
                        const txti = document.querySelector(".txtI");
                        
                        searchBtn.onclick = () => {
                            searchBox.classList.add("active");
                            searchBtn.classList.add("active");
                            searchInput.classList.add("active");
                            cancelBtn.classList.add("active");
                            searchInput.focus();
                            
                            
                            
                        }
                        cancelBtn.onclick = () => {
                            searchBox.classList.remove("active");
                            searchBtn.classList.remove("active");
                            searchInput.classList.remove("active");
                            cancelBtn.classList.remove("active");
                            searchData.classList.toggle("active");
                            searchInput.value = "";
                        }
                    </script>
                
            </form>
            
        </div>

    </section>

    <!-- home section ends -->
    <!-- prevent section starts  -->

    <section class="prevent" id="prevent">

        <h1 class="heading"> COMMENT PRÉVENIR LES VIRUS  </h1>

        <div class="box-container">

            <div class="box">
                <img src="covid_website/images/pre-1.png" alt="">

                <h3>Lave Ta Place </h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
            </div>

            <div class="box">
                <img src="covid_website/images/pre-2.png" alt="">
                <h3>Maintenir La Distance </h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
            </div>

            <div class="box">
                <img src="covid_website/images/pre-3.png" alt="">
                <h3>Ne Touche Pas Le Visage </h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
            </div>

            <div class="box">
                <img src="covid_website/images/pre-4.png" alt="">
                <h3>Lave Tes Mains</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
            </div>

            <div class="box">
                <img src="covid_website/images/pre-5.png" alt="">
                <h3>Utiliser Une Serviette </h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
            </div>

            <div class="box">
                <img src="covid_website/images/pre-6.png" alt="">
                <h3>Porter Un Masque</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, repudiandae aspernatur eum minus accusamus eligendi delectus ad? Similique, facilis esse?</p>
            </div>

        </div>

    </section>

    <!-- prevent section ends -->
    <!-- symptoms section starts  -->

    <section class="symptoms" id="symptoms">

        <h1 class="heading">SYMPTÔMES DU COVID19 </h1>

        <div class="column">

            <div class="main-image">
                <img src="covid_website/images/main-symp-img.png" alt="">
            </div>

            <div class="box-container">

                <div class="box">
                    <img src="covid_website/images/symp-a.png" alt="">
                    <h3>Toux Sèche</h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/symp-b.png" alt="">
                    <h3>Gorge Irritée</h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/symp-c.png" alt="">
                    <h3>Froid</h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/symp-d.png" alt="">
                    <h3>Fièvre</h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/symp-e.png" alt="">
                    <h3>Mal De Crâne</h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/symp-f.png" alt="">
                    <h3>Vomissement </h3>
                </div>

            </div>

        </div>

    </section>

    <!-- symptoms section ends -->
    <!-- precautions section starts  -->

    <section class="precautions" id="precautions">

        <h1 class="heading">PRENEZ DES PRÉCAUTIONS CONTRE COVID-19 </h1>

        <div class="column">

            <div class="box-container">

                <h3 class="title">choses que vous devriez FAIRE</h3>

                <div class="box">
                    <img src="covid_website/images/do-img1.png" alt="">
                    <div class="info">
                        <h3>Lave Tes Mains</h3>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vel odit quo saepe illum tempora corrupti sint distinctio, perferendis maxime illo!</p>
                    </div>
                </div>

                <div class="box">
                    <img src="covid_website/images/do-img2.png" alt="">
                    <div class="info">
                        <h3>Porte Toujours Un Masque</h3>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vel odit quo saepe illum tempora corrupti sint distinctio, perferendis maxime illo!</p>
                    </div>
                </div>

                <div class="box">
                    <img src="covid_website/images/do-img3.png" alt="">
                    <div class="info">
                        <h3>Rester à La Maison Pendant La Fièvre</h3>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vel odit quo saepe illum tempora corrupti sint distinctio, perferendis maxime illo!</p>
                    </div>
                </div>

            </div>

            <div class="box-container">

                <h3 class="title">Choses Que Vous Ne Devriez PAS FAIRE</h3>

                <div class="box">
                    <img src="covid_website/images/dont-img1.png" alt="">
                    <div class="info">
                        <h3>Eviter Les Contacts Etroits Avec Les Animaux </h3>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vel odit quo saepe illum tempora corrupti sint distinctio, perferendis maxime illo!</p>
                    </div>
                </div>

                <div class="box">
                    <img src="covid_website/images/dont-img2.png" alt="">
                    <div class="info">
                        <h3>Eviter Les Contacts Etroits Avec Les Gens </h3>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vel odit quo saepe illum tempora corrupti sint distinctio, perferendis maxime illo!</p>
                    </div>
                </div>

                <div class="box">
                    <img src="covid_website/images/dont-img3.png" alt="">
                    <div class="info">
                        <h3>Eviter Les Zones Bondées</h3>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vel odit quo saepe illum tempora corrupti sint distinctio, perferendis maxime illo!</p>
                    </div>
                </div>

            </div>

        </div>

    </section>

    <!-- precautions section ends -->
    <!-- doctor section start  -->

    <section class="doctor" id="doctor">

        <h1 class="heading">consult to our doctors</h1>

        <div class="box-container">

            <div class="box">
                <img src="img/4.jpg" alt="">
                <h3>Mohamed L'HARRAK</h3>
                <span>Stagiaire</span>
                <div class="share">
                    <a href="#" class="fab fa-whatsapp"></a>
                    <a href="#" class="fab fa-facebook-f"></a>
                    <a href="#" class="fab fa-twitter"></a>
                    <a href="#" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/2.jpg" alt="">
                <h3>Ayoub Jolti</h3>
                <span>Stagiaire</span>
                <div class="share">
                    <a href="#" class="fab fa-whatsapp"></a>
                    <a href="#" class="fab fa-facebook-f"></a>
                    <a href="#" class="fab fa-twitter"></a>
                    <a href="#" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/3.jpeg" alt="">
                <h3>Youness Fouitini</h3>
                <span>Stagiaire</span>
                <div class="share">
                    <a href="#" class="fab fa-whatsapp"></a>
                    <a href="#" class="fab fa-facebook-f"></a>
                    <a href="#" class="fab fa-twitter"></a>
                    <a href="#" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                </div>
            </div>

        </div>

    </section>

    <!-- doctor section ends -->
    <!-- hand-wash section starts  -->

    <section class="hand-wash" id="hand-wash">

        <h1 class="heading">Comment Bien Se Laver Les Mains </h1>

        <div class="column">

            <div class="box-container">

                <div class="box">
                    <img src="covid_website/images/wash-a.png" alt="">
                    <h3>Eau Et Savon</h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/wash-b.png" alt="">
                    <h3>Paume Contre Paume</h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/wash-c.png" alt="">
                    <h3>Entre Les Doigts </h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/wash-d.png" alt="">
                    <h3>Concentrez-vous Sur Les Pouces </h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/wash-e.png" alt="">
                    <h3>Dos Des Mains</h3>
                </div>

                <div class="box">
                    <img src="covid_website/images/wash-f.png" alt="">
                    <h3>Focus Sur Le Poignet </h3>
                </div>

            </div>

            <div class="main-image">
                <img src="covid_website/images/main-wash-img.png" alt="">
            </div>

        </div>

    </section>

    <!-- hand-wash section ends -->
    <!-- footer section starts  -->

    <div class="footer">

        <div class="box-container">

            <div class="box">
                <h3>A propos </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate minima soluta distinctio eaque magni veritatis dicta dolore dignissimos totam quis!</p>
            </div>

            <div class="box">
                <h3>PROFESSIONNEL DE LA SANTÉ</h3>
                <a href="LogInFrm.aspx" target="_blank">Connexion</a>
                
            </div>

            <div class="box">
            <h3>Liens Rapides</h3>
            <a class="active" href="#home">Accueil</a>
            <a href="#prevent">Empêcher</a>
            <a href="#symptoms">Symptoms</a>
            <a href="#precautions">Précautions</a>
            <a href="#doctor">Equipe</a>
            <a href="#hand-wash">Lavage des mains</a>
            <a href="TrackingCovide.html">Corona tracking</a>
            </div>

            <div class="box">
                <h3>Contacter</h3>
                <p> <i class="fas fa-phone"></i> +212 600 00 00 00 </p>
                <p> <i class="fas fa-envelope"></i> TDI202@gmail.com </p>
                <p> <i class="fas fa-map-marker-alt"></i> Morocco, Tanger - 90000. </p>
                
            </div>

        </div>

        <h1 class="credit"> Créé par <a href="#">TDI 202</a> &copy; copyright  2021 </h1>

    </div>

    <!-- footer section ends -->
    <!-- scroll top  -->

    <a href="#home" class="scroll-top">
        <img src="covid_website/images/scroll-img.png" alt="">
    </a>



   
    <!-- jquery cdn link  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- custom js file link  -->
    <script src="covid_website/script.js"></script>




</body>
</html>
