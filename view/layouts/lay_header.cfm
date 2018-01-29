<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content="Clean Slide Responsive Vcard Template" />
    <meta name="keywords" content="jquery, Responsive Vcard, Template, Vcard, Clean Slide" />
    <meta http-equiv="X-UA-Compatible" content="IE=9" />
    <meta http-equiv="X-UA-Compatible" content="IE=7" />
    <title>#request.applicationName#</title>

    <!-- Loading Google Web fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=IM+Fell+DW+Pica' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />

    <!-- CSS Files -->
    <link href="#request.cssPath#/reset.css" rel="stylesheet" type="text/css" />
    <link href="#request.cssPath#/style.css" rel="stylesheet" type="text/css"  id="color" />
    <link href="#request.cssPath#/typography.css" rel="stylesheet" type="text/css"  id="customFont"/>
    <link href="#request.cssPath#/arial_content.css" rel="stylesheet" type="text/css"  id="contentfont"/>



    <!-- include jQuery library -->
    <script type="text/javascript" src="assets/js/jquery-1.7.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.0/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

    <!-- data table -->
    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

    <script src="#request.jsPath#/home.js"></script>
</head>

<body>

<!-- wrapper -->
<div class="clr" id="top-head">&nbsp;</div>
<div id="container">
    <!--header -->
    <div id="header" >
        <div class="logo-bg" >
            <!--logo -->
            <div class="logo">
                <h2>Crush Finder</h2>
            </div>

            <!--head right -->
            <div class="right">

                <!--// Navigation //-->
                <div class="menu_nav">
                    <div id="nav-wrap">
                        <ul class="arrowunderline" id="nav">
                            <li class="home"  id="selected"><a href="index.cfm">Home</a></li>
                        </ul>
                    </div>
                </div>
                <!--// Navigation End //-->
            </div>
            <!--// -head right end //-->
        </div>
        <!--// logo bg end //-->
    </div>
    <!--header end -->
</cfoutput>