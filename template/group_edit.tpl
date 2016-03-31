<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">{LOCALE:GROUP_SETTINGS}</h1>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                {LOCALE:GROUP_EDIT} <span style="color:{VALUE:GROUP_COLOR};font-weight: bold">({VALUE:GROUP_NAME})</span>
            </div>
            <div class="panel-body">
                <form method="POST" action="{VALUE:GROUP_EDIT_QUERY}">
                    <div class="form-group">
                        <label for="group_name">{LOCALE:GROUP_NAME}</label>
                        <input type="text" name="group[name]" id="group_name" required class="form-control" value="{VALUE:GROUP_NAME}">
                    </div>
                    <div class="form-group">
                        <label for="group_color">{LOCALE:GROUP_COLOR}</label>
                        <input type="text" name="group[color]" id="group_color" required class="form-control" value="{VALUE:GROUP_COLOR}">
                    </div>
                    <div class="form-group">
                        <label for="group_price">{LOCALE:PACKAGE_PRICE}</label>
                        <input type="text" name="group[price]" id="group_price" required class="form-control" value="{VALUE:PACKAGE_PRICE}">
                    </div>
                    <input type="submit" class="btn btn-primary btn-lg btn-block" value="{LOCALE:CONTINUE}">
                </form>
            </div>
        </div>
    </div>
</div>