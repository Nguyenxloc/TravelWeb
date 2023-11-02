
<div class="row" style="max-width: 25rem;margin-left: auto;margin-right: auto;padding-top: 50px;">
    <div class="card" >
        <div class="card-body">
            <h5 class="card-title">Log in</h5>
            <div class="row">
                <div class="col-lg-12 md-12 mt-3">
                    <div class="input-group flex-nowrap">
                        <input type="text" class="form-control" placeholder="Account" aria-label="Username"
                               aria-describedby="addon-wrapping" ng-model="acc.user">
                    </div>
                </div>
                <div class="col-lg-12 md-12 mt-3">
                    <div class="input-group flex-nowrap">
                        <input type="password" class="form-control" placeholder="Password" aria-label="Username"
                               aria-describedby="addon-wrapping"ng-model="acc.pass">
                    </div>
                </div>
                <p ng-if="!$scope.message" style="color: orangered;">{{message}}</p>
                <a class="btn btn-primary mt-3" style="width:150px;margin-left:auto;margin-right:auto;" ng-click="login()">Log in</a>
            </div>
            <br>
        </div>
    </div>
</div>