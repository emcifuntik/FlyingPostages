<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">{LOCALE:USERS}</h1>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                {LOCALE:USERS_LIST}
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>{LOCALE:USER_NAME}</th>
                            <th>{LOCALE:GROUP}</th>
                            <th>{LOCALE:MONEY} ($)</th>
                            <th>{LOCALE:REGISTER_DATE}</th>
                            <th>{LOCALE:LAST_LOGIN_DATE}</th>
                        </tr>
                        </thead>
                        <tbody>
                        {BLOCK:BEGIN:USER_ROW}
                        <tr>
                            <td>{VALUE:USER_NAME}</td>
                            <td style="color: {VALUE:GROUP_COLOR};font-weight: bold">{VALUE:GROUP}</td>
                            <td>{VALUE:MONEY}</td>
                            <td>{VALUE:REGISTER_DATE}</td>
                            <td>{VALUE:LAST_LOGIN_DATE}</td>
                        </tr>
                        {BLOCK:END:USER_ROW}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>