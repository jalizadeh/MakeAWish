<%@ page import="com.makeawish.models.Users"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Make A Wish</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">


    <!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
    <!--  <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" /> -->
	<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

    <!--Font Awesome (added because you use icons in your prepend/append)-->
    <link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />

    <!-- Inline CSS based on choices in "Settings" tab -->
    <style>

    #DIV_1 {
    background-color: rgb(255, 255, 255);
    border-bottom-color: rgb(51, 51, 51);
    border-left-color: rgb(51, 51, 51);
    border-right-color: rgb(51, 51, 51);
    border-top-color: rgb(51, 51, 51);
    box-sizing: border-box;
    color: rgb(51, 51, 51);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    height: 59px;
    line-height: 20px;
    outline-color: rgb(51, 51, 51);
    overflow-wrap: break-word;
    text-align: left;
    text-decoration: none solid rgb(51, 51, 51);
    text-decoration-color: rgb(51, 51, 51);
    text-size-adjust: 100%;
    width: 164px;
    column-rule-color: rgb(51, 51, 51);
    perspective-origin: 82px 29.5px;
    transform-origin: 82px 29.5px;
    caret-color: rgb(51, 51, 51);
    background: rgb(255, 255, 255) none repeat scroll 0% 0% / auto padding-box border-box;
    border: 0px none rgb(51, 51, 51);
    border-top: 0px none rgb(51, 51, 51);
    border-right: 0px none rgb(51, 51, 51);
    border-bottom: 0px none rgb(51, 51, 51);
    border-left: 0px none rgb(51, 51, 51);
    border-color: rgb(51, 51, 51);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_1*/

#DIV_1:after {
    border-bottom-color: rgb(51, 51, 51);
    border-left-color: rgb(51, 51, 51);
    border-right-color: rgb(51, 51, 51);
    border-top-color: rgb(51, 51, 51);
    box-sizing: border-box;
    color: rgb(51, 51, 51);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 20px;
    outline-color: rgb(51, 51, 51);
    overflow-wrap: break-word;
    text-align: left;
    text-decoration: none solid rgb(51, 51, 51);
    text-decoration-color: rgb(51, 51, 51);
    text-size-adjust: 100%;
    column-rule-color: rgb(51, 51, 51);
    caret-color: rgb(51, 51, 51);
    border: 0px none rgb(51, 51, 51);
    border-top: 0px none rgb(51, 51, 51);
    border-right: 0px none rgb(51, 51, 51);
    border-bottom: 0px none rgb(51, 51, 51);
    border-left: 0px none rgb(51, 51, 51);
    border-color: rgb(51, 51, 51);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_1:after*/

#DIV_1:before {
    border-bottom-color: rgb(51, 51, 51);
    border-left-color: rgb(51, 51, 51);
    border-right-color: rgb(51, 51, 51);
    border-top-color: rgb(51, 51, 51);
    box-sizing: border-box;
    color: rgb(51, 51, 51);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 20px;
    outline-color: rgb(51, 51, 51);
    overflow-wrap: break-word;
    text-align: left;
    text-decoration: none solid rgb(51, 51, 51);
    text-decoration-color: rgb(51, 51, 51);
    text-size-adjust: 100%;
    column-rule-color: rgb(51, 51, 51);
    caret-color: rgb(51, 51, 51);
    border: 0px none rgb(51, 51, 51);
    border-top: 0px none rgb(51, 51, 51);
    border-right: 0px none rgb(51, 51, 51);
    border-bottom: 0px none rgb(51, 51, 51);
    border-left: 0px none rgb(51, 51, 51);
    border-color: rgb(51, 51, 51);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_1:before*/

#DIV_2 {
    border-bottom-color: rgb(51, 51, 51);
    border-left-color: rgb(51, 51, 51);
    border-right-color: rgb(51, 51, 51);
    border-top-color: rgb(51, 51, 51);
    box-sizing: border-box;
    color: rgb(51, 51, 51);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    height: 59px;
    line-height: 20px;
    margin-bottom: 15px;
    outline-color: rgb(51, 51, 51);
    overflow-wrap: break-word;
    text-align: left;
    text-decoration: none solid rgb(51, 51, 51);
    text-decoration-color: rgb(51, 51, 51);
    text-size-adjust: 100%;
    width: 164px;
    column-rule-color: rgb(51, 51, 51);
    perspective-origin: 82px 29.5px;
    transform-origin: 82px 29.5px;
    caret-color: rgb(51, 51, 51);
    border: 0px none rgb(51, 51, 51);
    border-top: 0px none rgb(51, 51, 51);
    border-right: 0px none rgb(51, 51, 51);
    border-bottom: 0px none rgb(51, 51, 51);
    border-left: 0px none rgb(51, 51, 51);
    border-color: rgb(51, 51, 51);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    margin: 0px 0px 15px;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_2*/

#DIV_2:after {
    border-bottom-color: rgb(51, 51, 51);
    border-left-color: rgb(51, 51, 51);
    border-right-color: rgb(51, 51, 51);
    border-top-color: rgb(51, 51, 51);
    box-sizing: border-box;
    color: rgb(51, 51, 51);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 20px;
    outline-color: rgb(51, 51, 51);
    overflow-wrap: break-word;
    text-align: left;
    text-decoration: none solid rgb(51, 51, 51);
    text-decoration-color: rgb(51, 51, 51);
    text-size-adjust: 100%;
    column-rule-color: rgb(51, 51, 51);
    caret-color: rgb(51, 51, 51);
    border: 0px none rgb(51, 51, 51);
    border-top: 0px none rgb(51, 51, 51);
    border-right: 0px none rgb(51, 51, 51);
    border-bottom: 0px none rgb(51, 51, 51);
    border-left: 0px none rgb(51, 51, 51);
    border-color: rgb(51, 51, 51);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_2:after*/

#DIV_2:before {
    border-bottom-color: rgb(51, 51, 51);
    border-left-color: rgb(51, 51, 51);
    border-right-color: rgb(51, 51, 51);
    border-top-color: rgb(51, 51, 51);
    box-sizing: border-box;
    color: rgb(51, 51, 51);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 20px;
    outline-color: rgb(51, 51, 51);
    overflow-wrap: break-word;
    text-align: left;
    text-decoration: none solid rgb(51, 51, 51);
    text-decoration-color: rgb(51, 51, 51);
    text-size-adjust: 100%;
    column-rule-color: rgb(51, 51, 51);
    caret-color: rgb(51, 51, 51);
    border: 0px none rgb(51, 51, 51);
    border-top: 0px none rgb(51, 51, 51);
    border-right: 0px none rgb(51, 51, 51);
    border-bottom: 0px none rgb(51, 51, 51);
    border-left: 0px none rgb(51, 51, 51);
    border-color: rgb(51, 51, 51);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_2:before*/


#DIV_4 {
    border-bottom-color: rgb(51, 51, 51);
    border-left-color: rgb(51, 51, 51);
    border-right-color: rgb(51, 51, 51);
    border-top-color: rgb(51, 51, 51);
    bottom: 0px;
    box-sizing: border-box;
    color: rgb(51, 51, 51);
    display: table;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    height: 34px;
    left: 0px;
    line-height: 20px;
    outline-color: rgb(51, 51, 51);
    overflow-wrap: break-word;
    position: relative;
    right: 0px;
    text-align: left;
    text-decoration: none solid rgb(51, 51, 51);
    text-decoration-color: rgb(51, 51, 51);
    text-size-adjust: 100%;
    top: 0px;
    width: 164px;
    column-rule-color: rgb(51, 51, 51);
    align-items: stretch;
    flex-wrap: wrap;
    perspective-origin: 82px 17px;
    transform-origin: 82px 17px;
    caret-color: rgb(51, 51, 51);
    border: 0px none rgb(51, 51, 51);
    border-top: 0px none rgb(51, 51, 51);
    border-right: 0px none rgb(51, 51, 51);
    border-bottom: 0px none rgb(51, 51, 51);
    border-left: 0px none rgb(51, 51, 51);
    border-color: rgb(51, 51, 51);
    flex-flow: row wrap;
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_4*/

#DIV_4:after {
    border-bottom-color: rgb(51, 51, 51);
    border-left-color: rgb(51, 51, 51);
    border-right-color: rgb(51, 51, 51);
    border-top-color: rgb(51, 51, 51);
    box-sizing: border-box;
    color: rgb(51, 51, 51);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 20px;
    outline-color: rgb(51, 51, 51);
    overflow-wrap: break-word;
    text-align: left;
    text-decoration: none solid rgb(51, 51, 51);
    text-decoration-color: rgb(51, 51, 51);
    text-size-adjust: 100%;
    column-rule-color: rgb(51, 51, 51);
    caret-color: rgb(51, 51, 51);
    border: 0px none rgb(51, 51, 51);
    border-top: 0px none rgb(51, 51, 51);
    border-right: 0px none rgb(51, 51, 51);
    border-bottom: 0px none rgb(51, 51, 51);
    border-left: 0px none rgb(51, 51, 51);
    border-color: rgb(51, 51, 51);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_4:after*/

#DIV_4:before {
    border-bottom-color: rgb(51, 51, 51);
    border-left-color: rgb(51, 51, 51);
    border-right-color: rgb(51, 51, 51);
    border-top-color: rgb(51, 51, 51);
    box-sizing: border-box;
    color: rgb(51, 51, 51);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 20px;
    outline-color: rgb(51, 51, 51);
    overflow-wrap: break-word;
    text-align: left;
    text-decoration: none solid rgb(51, 51, 51);
    text-decoration-color: rgb(51, 51, 51);
    text-size-adjust: 100%;
    column-rule-color: rgb(51, 51, 51);
    caret-color: rgb(51, 51, 51);
    border: 0px none rgb(51, 51, 51);
    border-top: 0px none rgb(51, 51, 51);
    border-right: 0px none rgb(51, 51, 51);
    border-bottom: 0px none rgb(51, 51, 51);
    border-left: 0px none rgb(51, 51, 51);
    border-color: rgb(51, 51, 51);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_4:before*/

#DIV_5 {
    background-color: rgb(238, 238, 238);
    border-bottom-color: rgb(204, 204, 204);
    border-bottom-left-radius: 4px;
    border-bottom-style: solid;
    border-bottom-width: 1px;
    border-left-color: rgb(204, 204, 204);
    border-left-style: solid;
    border-left-width: 1px;
    border-right-color: rgb(85, 85, 85);
    border-top-color: rgb(204, 204, 204);
    border-top-left-radius: 4px;
    border-top-style: solid;
    border-top-width: 1px;
    box-sizing: border-box;
    color: rgb(85, 85, 85);
    display: table-cell;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    height: 34px;
    line-height: 14px;
    outline-color: rgb(85, 85, 85);
    overflow-wrap: break-word;
    padding-bottom: 6px;
    padding-left: 12px;
    padding-right: 12px;
    padding-top: 6px;
    text-align: center;
    text-decoration: none solid rgb(85, 85, 85);
    text-decoration-color: rgb(85, 85, 85);
    text-size-adjust: 100%;
    vertical-align: middle;
    white-space: nowrap;
    width: 38px;
    column-rule-color: rgb(85, 85, 85);
    perspective-origin: 19px 17px;
    transform-origin: 19px 17px;
    caret-color: rgb(85, 85, 85);
    background: rgb(238, 238, 238) none repeat scroll 0% 0% / auto padding-box border-box;
    border: ;
    border-top: 1px solid rgb(204, 204, 204);
    border-right: 0px none rgb(85, 85, 85);
    border-bottom: 1px solid rgb(204, 204, 204);
    border-left: 1px solid rgb(204, 204, 204);
    border-width: 1px 0px 1px 1px;
    border-color: rgb(204, 204, 204) rgb(85, 85, 85) rgb(204, 204, 204) rgb(204, 204, 204);
    border-style: solid none solid solid;
    border-radius: 4px 0 0 4px;
    font: normal normal 400 normal 14px / 14px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(85, 85, 85) none 0px;
    padding: 6px 12px;
}/*#DIV_5*/

#DIV_5:after {
    border-bottom-color: rgb(85, 85, 85);
    border-left-color: rgb(85, 85, 85);
    border-right-color: rgb(85, 85, 85);
    border-top-color: rgb(85, 85, 85);
    box-sizing: border-box;
    color: rgb(85, 85, 85);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 14px;
    outline-color: rgb(85, 85, 85);
    overflow-wrap: break-word;
    text-align: center;
    text-decoration: none solid rgb(85, 85, 85);
    text-decoration-color: rgb(85, 85, 85);
    text-size-adjust: 100%;
    white-space: nowrap;
    column-rule-color: rgb(85, 85, 85);
    caret-color: rgb(85, 85, 85);
    border: 0px none rgb(85, 85, 85);
    border-top: 0px none rgb(85, 85, 85);
    border-right: 0px none rgb(85, 85, 85);
    border-bottom: 0px none rgb(85, 85, 85);
    border-left: 0px none rgb(85, 85, 85);
    border-color: rgb(85, 85, 85);
    font: normal normal 400 normal 14px / 14px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(85, 85, 85) none 0px;
}/*#DIV_5:after*/

#DIV_5:before {
    border-bottom-color: rgb(85, 85, 85);
    border-left-color: rgb(85, 85, 85);
    border-right-color: rgb(85, 85, 85);
    border-top-color: rgb(85, 85, 85);
    box-sizing: border-box;
    color: rgb(85, 85, 85);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 14px;
    outline-color: rgb(85, 85, 85);
    overflow-wrap: break-word;
    text-align: center;
    text-decoration: none solid rgb(85, 85, 85);
    text-decoration-color: rgb(85, 85, 85);
    text-size-adjust: 100%;
    white-space: nowrap;
    column-rule-color: rgb(85, 85, 85);
    caret-color: rgb(85, 85, 85);
    border: 0px none rgb(85, 85, 85);
    border-top: 0px none rgb(85, 85, 85);
    border-right: 0px none rgb(85, 85, 85);
    border-bottom: 0px none rgb(85, 85, 85);
    border-left: 0px none rgb(85, 85, 85);
    border-color: rgb(85, 85, 85);
    font: normal normal 400 normal 14px / 14px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(85, 85, 85) none 0px;
}/*#DIV_5:before*/

#I_6 {
    border-bottom-color: rgb(85, 85, 85);
    border-left-color: rgb(85, 85, 85);
    border-right-color: rgb(85, 85, 85);
    border-top-color: rgb(85, 85, 85);
    box-sizing: border-box;
    color: rgb(85, 85, 85);
    display: inline-block;
    font-family: FontAwesome;
    font-size: 14px;
    font-style: normal;
    height: 14px;
    line-height: 14px;
    outline-color: rgb(85, 85, 85);
    overflow-wrap: break-word;
    text-align: center;
    text-decoration: none solid rgb(85, 85, 85);
    text-decoration-color: rgb(85, 85, 85);
    text-size-adjust: 100%;
    white-space: nowrap;
    width: 13px;
    column-rule-color: rgb(85, 85, 85);
    perspective-origin: 6.5px 7px;
    transform-origin: 6.5px 7px;
    caret-color: rgb(85, 85, 85);
    border: 0px none rgb(85, 85, 85);
    border-top: 0px none rgb(85, 85, 85);
    border-right: 0px none rgb(85, 85, 85);
    border-bottom: 0px none rgb(85, 85, 85);
    border-left: 0px none rgb(85, 85, 85);
    border-color: rgb(85, 85, 85);
    font: normal normal 400 normal 14px / 14px FontAwesome;
    outline: rgb(85, 85, 85) none 0px;
}/*#I_6*/

#I_6:after {
    border-bottom-color: rgb(85, 85, 85);
    border-left-color: rgb(85, 85, 85);
    border-right-color: rgb(85, 85, 85);
    border-top-color: rgb(85, 85, 85);
    box-sizing: border-box;
    color: rgb(85, 85, 85);
    font-family: FontAwesome;
    font-size: 14px;
    font-style: normal;
    line-height: 14px;
    outline-color: rgb(85, 85, 85);
    overflow-wrap: break-word;
    text-align: center;
    text-decoration: none solid rgb(85, 85, 85);
    text-decoration-color: rgb(85, 85, 85);
    text-size-adjust: 100%;
    white-space: nowrap;
    column-rule-color: rgb(85, 85, 85);
    caret-color: rgb(85, 85, 85);
    border: 0px none rgb(85, 85, 85);
    border-top: 0px none rgb(85, 85, 85);
    border-right: 0px none rgb(85, 85, 85);
    border-bottom: 0px none rgb(85, 85, 85);
    border-left: 0px none rgb(85, 85, 85);
    border-color: rgb(85, 85, 85);
    font: normal normal 400 normal 14px / 14px FontAwesome;
    outline: rgb(85, 85, 85) none 0px;
}/*#I_6:after*/

#I_6:before {
    border-bottom-color: rgb(85, 85, 85);
    border-left-color: rgb(85, 85, 85);
    border-right-color: rgb(85, 85, 85);
    border-top-color: rgb(85, 85, 85);
    box-sizing: border-box;
    color: rgb(85, 85, 85);
    content: '""';
    font-family: FontAwesome;
    font-size: 14px;
    font-style: normal;
    line-height: 14px;
    outline-color: rgb(85, 85, 85);
    overflow-wrap: break-word;
    text-align: center;
    text-decoration: none solid rgb(85, 85, 85);
    text-decoration-color: rgb(85, 85, 85);
    text-size-adjust: 100%;
    white-space: nowrap;
    column-rule-color: rgb(85, 85, 85);
    perspective-origin: 0px 0px;
    transform-origin: 0px 0px;
    caret-color: rgb(85, 85, 85);
    border: 0px none rgb(85, 85, 85);
    border-top: 0px none rgb(85, 85, 85);
    border-right: 0px none rgb(85, 85, 85);
    border-bottom: 0px none rgb(85, 85, 85);
    border-left: 0px none rgb(85, 85, 85);
    border-color: rgb(85, 85, 85);
    font: normal normal 400 normal 14px / 14px FontAwesome;
    outline: rgb(85, 85, 85) none 0px;
}/*#I_6:before*/

#INPUT_7 {
    background-clip: padding-box;
    border-bottom-color: rgb(204, 204, 204);
    border-bottom-right-radius: 4px;
    border-bottom-style: solid;
    border-bottom-width: 1px;
    border-left-color: rgb(204, 204, 204);
    border-left-style: solid;
    border-left-width: 1px;
    border-right-color: rgb(204, 204, 204);
    border-right-style: solid;
    border-right-width: 1px;
    border-top-color: rgb(204, 204, 204);
    border-top-right-radius: 4px;
    border-top-style: solid;
    border-top-width: 1px;
    bottom: 0px;
    box-shadow: rgba(0, 0, 0, 0.075) 0px 1px 1px 0px inset;
    color: rgb(85, 85, 85);
    display: block;
    float: left;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    height: 34px;
    left: 0px;
    line-height: 20px;
    outline-color: rgb(85, 85, 85);
    overflow-wrap: break-word;
    padding-bottom: 6px;
    padding-left: 12px;
    padding-right: 12px;
    padding-top: 6px;
    position: relative;
    right: 0px;
    text-decoration: none solid rgb(85, 85, 85);
    text-decoration-color: rgb(85, 85, 85);
    text-size-adjust: 100%;
    top: 0px;
    transition-delay: 0s, 0s;
    transition-duration: 0.15s, 0.15s;
    transition-property: border-color, box-shadow;
    transition-timing-function: ease-in-out, ease-in-out;
    width: 126px;
    z-index: 2;
    column-rule-color: rgb(85, 85, 85);
    flex-grow: 1;
    perspective-origin: 63px 17px;
    transform-origin: 63px 17px;
    caret-color: rgb(85, 85, 85);
    background: rgb(255, 255, 255) none repeat scroll 0% 0% / auto padding-box padding-box;
    border: 1px solid rgb(204, 204, 204);
    border-top: 1px solid rgb(204, 204, 204);
    border-right: 1px solid rgb(204, 204, 204);
    border-bottom: 1px solid rgb(204, 204, 204);
    border-left: 1px solid rgb(204, 204, 204);
    border-width: 1px;
    border-color: rgb(204, 204, 204);
    border-style: solid;
    border-radius: 0 4px 4px 0;
    flex: 1 1 auto;
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(85, 85, 85) none 0px;
    padding: 6px 12px;
    transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;
}/*#INPUT_7*/

#INPUT_7:after {
    border-bottom-color: rgb(85, 85, 85);
    border-left-color: rgb(85, 85, 85);
    border-right-color: rgb(85, 85, 85);
    border-top-color: rgb(85, 85, 85);
    box-sizing: border-box;
    color: rgb(85, 85, 85);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 20px;
    outline-color: rgb(85, 85, 85);
    overflow-wrap: break-word;
    text-decoration: none solid rgb(85, 85, 85);
    text-decoration-color: rgb(85, 85, 85);
    text-size-adjust: 100%;
    column-rule-color: rgb(85, 85, 85);
    caret-color: rgb(85, 85, 85);
    border: 0px none rgb(85, 85, 85);
    border-top: 0px none rgb(85, 85, 85);
    border-right: 0px none rgb(85, 85, 85);
    border-bottom: 0px none rgb(85, 85, 85);
    border-left: 0px none rgb(85, 85, 85);
    border-color: rgb(85, 85, 85);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(85, 85, 85) none 0px;
}/*#INPUT_7:after*/

#INPUT_7:before {
    border-bottom-color: rgb(85, 85, 85);
    border-left-color: rgb(85, 85, 85);
    border-right-color: rgb(85, 85, 85);
    border-top-color: rgb(85, 85, 85);
    box-sizing: border-box;
    color: rgb(85, 85, 85);
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 20px;
    outline-color: rgb(85, 85, 85);
    overflow-wrap: break-word;
    text-decoration: none solid rgb(85, 85, 85);
    text-decoration-color: rgb(85, 85, 85);
    text-size-adjust: 100%;
    column-rule-color: rgb(85, 85, 85);
    caret-color: rgb(85, 85, 85);
    border: 0px none rgb(85, 85, 85);
    border-top: 0px none rgb(85, 85, 85);
    border-right: 0px none rgb(85, 85, 85);
    border-bottom: 0px none rgb(85, 85, 85);
    border-left: 0px none rgb(85, 85, 85);
    border-color: rgb(85, 85, 85);
    font: normal normal 400 normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
    outline: rgb(85, 85, 85) none 0px;
}/*#INPUT_7:before*/




.bootstrap-iso{
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}

.bootstrap-iso * {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.bootstrap-iso {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 1.42857143;
  color: #333333;
  background-color: #ffffff;
}

        .bootstrap-iso .formden_header h2,
        .bootstrap-iso .formden_header p,
        .bootstrap-iso form {
            font-family: Arial, Helvetica, sans-serif;
            color: black
        }
        
        .bootstrap-iso form button,
        .bootstrap-iso form button:hover {
            color: white !important;
        }
        
        .asteriskField {
            color: red;
        }
    </style>

</head>

<body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

        <a class="navbar-brand mr-1" href="Index">Make A Wish</a>

        <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
            <i class="fa fa-bars"></i>
        </button>

        <!-- Navbar Search -->
        <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <button class="btn btn-primary" type="button">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </form>

        <!-- Navbar -->
        <ul class="navbar-nav ml-auto ml-md-0">
            <li class="nav-item dropdown no-arrow mx-1">
                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-bell fa-fw"></i> <span class="badge badge-danger">9+</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
                    <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item dropdown no-arrow mx-1">
                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-envelope fa-fw"></i> <span class="badge badge-danger">7</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                    <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-user-circle fa-fw"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#">Settings</a> <a class="dropdown-item" href="#">Activity Log</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="Login">Login</a> <a class="dropdown-item" href="Signup">Sign Up</a> <a class="dropdown-item" href="Logout" data-toggle="modal" data-target="#logoutModal">Logout</a>
                </div>
            </li>
        </ul>

    </nav>

    <div id="wrapper">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-md-auto">
                    <div class="text-center">
                        <b>Who Are You?</b> | More Details | Your ID in MAW | Your Photo | All Set
                    </div>

                    <form method="POST" action="Signup" class="bootstrap-iso">
                        <div class="card card-login mx-auto mt-5">
                            <div class="card-header">Who Are You?</div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="firstname">Firstname</label>
                                            <input type="text" class="form-control" name="firstname">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="lastname">Lastname</label>
                                            <input type="text" class="form-control" name="lastname">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="gender">Gender</label>
                                            <select class="custom-select mb-3" name="gender">
                                                <option value="Male" selected>Male</option>
                                                <option value="Female">Female</option>
                                                <option value="NotInterested">I`m not interested to mention
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="bootstrap-iso" id="DIV_1">
                                            <div class="form-group " id="DIV_2">
                                                <label for="gender">Date of Birth</label>
                                                <div class="input-group" id="DIV_4">
                                                    <div class="input-group-addon" id="DIV_5">
                                                        <i class="fa fa-calendar" id="I_6"></i>
                                                    </div>
                                                    <input class="form-control" id="INPUT_7" name="date" placeholder="MM/DD/YYYY" type="text">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="card-header">More Details</div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="password" placeholder="Password" aria-describedby="passHelp">
                                    <small id="passHelp" class="form-text text-muted">Strenght: - - - - -</small>
                                </div>

                                <div class="form-group">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="gridCheck">
                                        <label class="form-check-label" for="gridCheck">
                                            I accept the terms & condition
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Next</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top"> <i class="fa fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">x</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>

    <!-- Extra JavaScript/CSS added manually in "Settings" tab -->
    <!-- Extra JavaScript/CSS added manually in "Settings" tab -->
    <!-- Include jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

    <!-- Include Date Range Picker -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />

    <script>
        $(document).ready(function() {
            var date_input = $('input[name="date"]'); //our date input has the name "date"
            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
            date_input.datepicker({
                format: 'mm/dd/yyyy',
                container: container,
                todayHighlight: true,
                autoclose: true,
            })
        })
    </script>

</body>

</html>