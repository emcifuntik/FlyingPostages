<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">{LOCALE:SETTINGS}</h1>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                {LOCALE:GROUP_SETTINGS}
                <div class="pull-right">

                    <a href="{VALUE:NEW_GROUP}">{LOCALE:NEW_GROUP}</a>
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table id="myTable" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>{LOCALE:GROUP_ID}</th>
                            <th>{LOCALE:GROUP_NAME}</th>
                            <th>{LOCALE:PACKAGE_PRICE} ($)</th>
                            <th>{LOCALE:MEMBERS_COUNT}</th>
                        </tr>
                        </thead>
                        <tbody>
                        {BLOCK:BEGIN:GROUP_ROW}
                        <tr data-group-edit="{VALUE:EDIT_HREF}" data-group-members="{VALUE:MEMBERS_HREF}" data-group-permissions="{VALUE:PERMISSIONS_HREF}" data-group-delete="{VALUE:DELETE_HREF}">
                            <td>{VALUE:GROUP_ID}</td>
                            <td style="color:{VALUE:GROUP_COLOR};font-weight: bold;">{VALUE:GROUP_NAME}</td>
                            <td>{VALUE:PACKAGE_PRICE}</td>
                            <td>{VALUE:MEMBERS_COUNT}</td>
                        </tr>
                        {BLOCK:END:GROUP_ROW}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<ul id="contextMenu" class="dropdown-menu" role="menu" style="display:none" >
    <li><a tabindex="-1" data-action="group-edit">Edit</a></li>
    <li><a tabindex="-1" data-action="members">Members</a></li>
    <li><a tabindex="-1" data-action="permissions">Permissions</a></li>
    <li><a tabindex="-1" data-action="delete">Delete</a></li>
</ul>