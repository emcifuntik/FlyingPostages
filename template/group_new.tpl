<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">{LOCALE:GROUP_SETTINGS}</h1>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                {LOCALE:NEW_GROUP}
            </div>
            <div class="panel-body">
                <form method="POST" action="{VALUE:NEW_GROUP_QUERY}">
                    <div class="form-group">
                        <label for="group_name">{LOCALE:GROUP_NAME}</label>
                        <input type="text" name="group[name]" id="group_name" required class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="group_color">{LOCALE:GROUP_COLOR}</label>
                        <input type="text" name="group[color]" id="group_color" required class="form-control" value="#000000">
                    </div>
                    <div class="form-group">
                        <label for="group_price">{LOCALE:PACKAGE_PRICE}</label>
                        <input type="text" name="group[price]" id="group_price" required class="form-control" value="0">
                    </div>
                    <div class="form-group">
                        <label for="group_permissions">{LOCALE:GROUP_PERMISSIONS}</label>
                        <select name="group[permissions]" id="group_permissions" required class="form-control">
                            <option selected value="0">{LOCALE:DO_NOT_COPY}</option>
                            {BLOCK:BEGIN:PERMISSION_ROW}<option value="{VALUE:GROUP_ID}">{VALUE:GROUP_NAME}</option>{BLOCK:END:PERMISSION_ROW}
                        </select>
                    </div>
                    <input type="submit" class="btn btn-primary btn-lg btn-block" value="{LOCALE:CONTINUE}">
                </form>
            </div>
        </div>
    </div>
</div>