<div style="padding-top:55px; padding-left:30px;">
    <button type="button" class="btn btn-primary" ng-click="addPost()"><i class="bi bi-file-earmark-plus" ></i> Add post</button>
    <h1>My post</h1>
    <div class="row">
        <div class="col-md-6 d-flex" style="padding-bottom: 55px;width:900px; border: 1px solid red;" ng-repeat="item in lstPost">
            <div class="col-md-6" style="width:250px;height:150px;">
                <img src="img/banner2.2.jpg" alt="imgPost" style="width: 250px; height:150px;">
            </div>
            <div class="col-md-6" style="height: 150px; width: 600px;border: 1px solid red;">
                <a href="" style="color:black;">
                    <h4>{{item.title}}</h4>
                    <p class="d-flex flex-row-reverse me-4" style="font-style: italic;">Date:14/10/2023
                        Author:{{item.author}}</p>
                    <p style="font-size:14px;">{{item.description}}</p>
                </a>
            </div>
        </div>
        <div class="col-md-6" style="padding-bottom: 55px;width:420px;border: 1px solid black; position: fixed; margin-left: 900px;">
            <div class="col-md-6" style="width:fit-content;margin-left: 70px;">
                <img src="img/banner2.2.jpg" alt="imgPost" style="width: 250px; height:150px">
            </div>
            <div class="col-md-6" style="height: fit-content;margin-left: 70px;">
                <a href="" style="color:black;">
                    <h4>{{item.title}}</h4>
                    <p class="d-flex flex-row-reverse me-4" style="font-style: italic;">Date:14/10/2023
                        Author:{{item.author}}</p>
                    <p style="font-size:14px;">{{item.description}}</p>
                </a>
            </div>
        </div>
    </div>
</div>