<%-- 
    Document   : MenuTopPatial
    Created on : Dec 12, 2019, 10:28:13 PM
    Author     : 84969
--%>

<!-- Top Bar -->
<nav class="navbar">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
            <a href="javascript:void(0);" class="bars"></a>
            <a class="navbar-brand" href="./index.jsp">Shop Online</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <!-- Call Search -->
                <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li>
                <!-- #END# Call Search -->
                <li>
<!--                    @if (SignInManager.IsSignedIn(User))
                    {
                        <form asp-area="Identity" asp-page="/Account/Logout" asp-route-returnUrl="@Url.Action("Index", "Home", new { area = "" })" method="post" id="logoutForm" class="navbar-right">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a asp-area="Identity" asp-page="/Account/Manage/Index" title="Manage">Hello @UserManager.GetUserName(User)!</a>
                                </li>
                                <li>
                                    <button type="submit" class="btn btn-link navbar-btn navbar-link">Logout</button>
                                </li>
                            </ul>
                        </form>
                    }-->
<!--                    else
                    {-->
                        <ul class="nav navbar-nav">
                            <li><a href="" >Register</a></li>
                            <li><a href="">Login</a></li>
                        </ul>
                    <!--}-->
                </li>
                <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="material-icons">more_vert</i></a></li>
            </ul>
        </div>
    </div>
</nav>