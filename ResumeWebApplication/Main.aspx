<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ResumeWebApplication.Main" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Resume - Start Bootstrap Theme</title>

    <link href="Template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <link href="Template/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <link href="Template/css/resume.min.css" rel="stylesheet">
</head>

<body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">Clarence Taylor</span>
            <span class="d-none d-lg-block">
                <asp:Repeater ID="Repeater7" runat="server">
                    <ItemTemplate>
                        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src='<%#Eval("Image") %>' alt="">
                    </ItemTemplate>
                </asp:Repeater>
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">About Me</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#experience">Experience</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#education">Education</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#skills">Skills</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#interests">Interests</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#awards">Certificates</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid p-0">

        <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <h1 class="mb-0">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            <span class="text-primary">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Surname") %>'></asp:Label></span>
                        </h1>
                        <div class="subheading mb-5">
                            Adress:
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Adress") %>'></asp:Label><p></p>
                            Phone:
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Phone") %>'></asp:Label><p></p>

                            Mail:
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Mail") %>'></asp:Label>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Note") %>'></asp:Label>
                        </p>
                        <div class="social-icons">
                            <a href="#">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a href="#">
                                <i class="fab fa-github"></i>
                            </a>
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
            <h2 class="mb-5">Experience</h2>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("Title") %>'></asp:Label></h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Subtitle") %>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                </p>
                            </div>
                            <div class="resume-date text-md-right">
                                <span class="text-primary">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Date") %>'></asp:Label></span>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
            <h2 class="mb-5">Education</h2>
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label11" runat="server" Text='<%#Eval("Title") %>'></asp:Label></h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label12" runat="server" Text='<%#Eval("Subtitle") %>'></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label13" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="Label14" runat="server" Text='<%#Eval("GPA") %>'></asp:Label>
                                </p>
                            </div>
                            <div class="resume-date text-md-right">
                                <span class="text-primary">
                                    <asp:Label ID="Label15" runat="server" Text='<%#Eval("Date") %>'></asp:Label></span>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
            <div class="my-auto">
                <h2 class="mb-5">Skills</h2>
                <div class="subheading mb-3">Programming Languages &amp; Tools</div>

                <img align="left" alt="Visual Studio" height="40" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/visualstudio/visualstudio-plain.svg">
                <img align="left" alt="Visual Studio Code" height="40" width="40" src="https://raw.githubusercontent.com/devicons/devicon/2ae2a900d2f041da66e950e4d48052658d850630/icons/vscode/vscode-original.svg">
                <img align="left" alt="HTML" height="40" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original.svg">
                <img align="left" alt="CSS" height="40" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original.svg">
                <img align="left" alt="MSSQLServer" height="40" width="40" src="https://cdn.hosting.com.tr/hosting/img/svg/windows/sqlserver.svg">
                <img align="left" alt="C#" height="40" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/csharp/csharp-original.svg">
                <img align="left" alt="Git" height="40" width="40" src="https://camo.githubusercontent.com/fbfcb9e3dc648adc93bef37c718db16c52f617ad055a26de6dc3c21865c3321d/68747470733a2f2f7777772e766563746f726c6f676f2e7a6f6e652f6c6f676f732f6769742d73636d2f6769742d73636d2d69636f6e2e737667">
                <img align="left" alt="Php" height="40" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/dot-net/dot-net-original-wordmark.svg">
                <img align="left" alt="Php" height="30" width="40" src="https://camo.githubusercontent.com/93b32389bf746009ca2370de7fe06c3b5146f4c99d99df65994f9ced0ba41685/68747470733a2f2f7777772e766563746f726c6f676f2e7a6f6e652f6c6f676f732f676574706f73746d616e2f676574706f73746d616e2d69636f6e2e737667">

                <br />
                <br />
                <br>
                <br />


                <div class="subheading mb-3">Workflow</div>
                <asp:Repeater ID="Repeater6" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <i class="fa-li fa fa-check"></i>
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("Skill") %>'></asp:Label></li>
                        </ul>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">

            <div class="my-auto">
                <h2 class="mb-5">Interests</h2>
                <asp:Repeater ID="Repeater4" runat="server">
                    <ItemTemplate>
                        <p>
                            <asp:Label ID="Label16" runat="server" Text='<%#Eval("Interest") %>'></asp:Label>
                        </p>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
            <div class="my-auto">
                <h2 class="mb-5">Certifications</h2>
                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <i class="fa-li fa fa-trophy text-warning"></i>
                                <asp:Label ID="Label17" runat="server" Text='<%#Eval("Certificate") %>'></asp:Label></li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

    </div>

    <script src="Template/vendor/jquery/jquery.min.js"></script>
    <script src="Template/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="Template/vendor/jquery-easing/jquery.easing.min.js"></script>

    <script src="Template/js/resume.min.js"></script>

</body>

</html>
