
let myApp  = angular.module('myApp', ['ngRoute']);
myApp.config(function($routeProvider){
    $routeProvider
        .when(
            '/home',
            {
                templateUrl:'views/home.jsp',
                controller: HomeController
            }
        )
        .when(
            '/myPost',
            {
                templateUrl:'views/myPost.jsp',
                controller: MyPostController
            }
        )
        .when(
            '/contact',
            {
                templateUrl:'views/contact.jsp',
                controller: ContactController
            }
        )
        .when(
            '/login',
            {
                templateUrl:'views/login.jsp',
                controller: LoginController
            }
        )
        .otherwise(
            {
                redirectTo: '/home',
            }
        )
});