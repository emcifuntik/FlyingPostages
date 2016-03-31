<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">{LOCALE:MY_PARCELS}</h1>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th>{LOCALE:LABEL_DATE}</th>
                    <th>{LOCALE:ROUTE}</th>
                    <th>{LOCALE:SENDER_NAME}</th>
                    <th>{LOCALE:RECIPIENT_NAME}</th>
                    <th>{LOCALE:TRACK_NUMBER}</th>
                </tr>
                </thead>
                <tbody>
                {BLOCK:BEGIN:TABLE_ROW}
                <tr>
                    <td>
                        {SWITCH:BEGIN:PAID}
                            {CASE:BEGIN:TRUE}
                                <a href="{VALUE:LABEL_HREF}">{VALUE:LABEL_DATE}</a>
                            {CASE:END:TRUE}
                            {CASE:BEGIN:FALSE}
                                <a href="{VALUE:LABEL_HREF}"><i class="fa fa-shopping-cart"></i> {LOCALE:PAY}</a>
                            {CASE:END:FALSE}
                        {SWITCH:END:PAID}
                    </td>
                    <td>{VALUE:ROUTE}</td>
                    <td>{VALUE:SENDER_NAME}</td>
                    <td>{VALUE:RECIPIENT_NAME}</td>
                    <td><a href="{VALUE:LABEL_PDF_HREF}">{VALUE:TRACK_NUMBER}</a></td>
                </tr>
                {BLOCK:END:TABLE_ROW}
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <ul class="pagination">
                {BLOCK:BEGIN:PAGINATION}<li class="{VALUE:PAGINATION_CLASS}"><a href="{VALUE:PAGINATION_HREF}">{VALUE:PAGINATION_TEXT}</a></li>{BLOCK:END:PAGINATION}
            </ul>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-file-excel-o fa-fw"></i> {LOCALE:EXPORT_TO_EXCEL}
            </div>
            <div class="panel-body">
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="date_from">{LOCALE:FROM}</label>
                        <input type="date" id="date_from" name="params[date_from]" class="form-control"/>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="date_to">{LOCALE:TO}</label>
                        <input type="date" id="date_to" name="params[date_to]" class="form-control"/>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <label for="format">{LOCALE:FORMAT}</label>
                        <select id="format" name="params[format]" class="form-control">
                            <option selected value="xls">Excel Binary File Format (.xls)</option>
                            <option value="csv">Comma-Separated Values (.csv)</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <label for="routes">{LOCALE:ROUTES}</label>
                        <select id="routes" name="params[routes]" class="form-control">
                            <option selected value="ALL">{LOCALE:ALL}</option>
                            <option value="INTERNATIONAL">{LOCALE:INTERNATIONAL}</option>
                            <option value="LOCAL">{LOCALE:LOCAL}</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <button type="button" class="btn btn-info btn-lg btn-block">{LOCALE:EXPORT}</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>