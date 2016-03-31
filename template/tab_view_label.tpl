<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">{LOCALE:LABEL_INFO}</h1>
    </div>
</div>
<div class="row">
    <div class="panel-body">

        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane fade in active" id="home-pills">
                <div class="row">
                    <br/>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        {LOCALE:SENDER}
                                    </div>
                                    <div class="panel-body">
                                        <p><b>{LOCALE:SHIP_FROM_ZIP}:</b> {VALUE:SHIP_FROM_ZIP}</p>
                                        <p><b>{LOCALE:NAME}: </b>{VALUE:SENDER_NAME}</p>
                                        <p><b>{LOCALE:COMPANY}: </b>{VALUE:SENDER_COMPANY}</p>
                                        <p><b>{LOCALE:ADDRESS}: </b>{VALUE:SENDER_ADDRESS}</p>
                                        <p><b>{LOCALE:ADD_TO_ADDRESS}: </b>{VALUE:SENDER_ADD_TO_ADDRESS}</p>
                                        <p><b>{LOCALE:CITY}: </b>{VALUE:SENDER_CITY}</p>
                                        <p><b>{LOCALE:STATE}: </b>{VALUE:SENDER_STATE}</p>
                                        <p><b>{LOCALE:ZIP_CODE}: </b>{VALUE:SENDER_ZIP_CODE}</p>
                                        <p><b>{LOCALE:PHONE}: </b>{VALUE:SENDER_PHONE}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        {LOCALE:RECIPIENT}
                                    </div>
                                    <div class="panel-body">
                                        <!--Required Name or Company-->
                                            <p><b>{LOCALE:NAME}: </b>{VALUE:RECIPIENT_NAME}</p>
                                            <p><b>{LOCALE:ADDRESS}: </b>{VALUE:RECIPIENT_ADDRESS}</p>
                                            <p><b>{LOCALE:ADD_TO_ADDRESS}: </b>{VALUE:RECIPIENT_ADD_TO_ADDRESS}</p>
                                            <p><b>{LOCALE:CITY}: </b>{VALUE:RECIPIENT_CITY}</p>
                                            <p><b>{LOCALE:STATE}: </b>{VALUE:RECIPIENT_STATE}</p>
                                            <p><b>{LOCALE:ZIP_CODE}: </b>{VALUE:RECIPIENT_ZIP_CODE}</p>
                                            <p><b>{LOCALE:PHONE}: </b>{VALUE:RECIPIENT_PHONE}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        {LOCALE:PARCEL_OPTIONS}
                                    </div>
                                    <div class="panel-body">
                                        <p><b>{LOCALE:PACKAGE_TYPE}: </b>{VALUE:PACKAGE_TYPE}</p>
                                        <p><b>{LOCALE:SERVICE_TYPE}: </b>{VALUE:SERVICE_TYPE}</p>
                                        <p><b>{LOCALE:WEIGHT}: </b>{VALUE:WEIGHT_LB} lbs. {VALUE:WEIGHT_OZ} oz.</p>
                                        <p><b>{LOCALE:SMS_NOTIFY}: </b>{VALUE:SMS_NOTIFY}</p>
                                        <p><b>{LOCALE:AUTO_REFUND}: </b>{VALUE:AUTO_REFUND}</p>
                                        <p><b>{LOCALE:PRICE}: </b>${VALUE:PRICE}</p>
                                        {SWITCH:BEGIN:PAID}
                                            {CASE:BEGIN:TRUE}
                                            <p><b>{LOCALE:TRACK_NUMBER}: </b><a href="{VALUE:LABEL_HREF}">{VALUE:TRACK_NUMBER}</a></p>
                                            {CASE:END:TRUE}
                                            {CASE:BEGIN:FALSE}
                                                <a href="{VALUE:BUY_LABEL_HREF}" class="btn btn-warning btn-lg btn-block">{LOCALE:PAY}</a>
                                            {CASE:END:FALSE}
                                        {SWITCH:END:PAID}
                                    </div>
                                </div>
                            </div>
                            {SWITCH:BEGIN:SHOW_TRACKING}
                            {CASE:BEGIN:TRUE}
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        {LOCALE:POSTAGE_TRACKING}
                                    </div>
                                    <div class="panel-body">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th>{LOCALE:DATETIME}</th>
                                        <th>{LOCALE:COUNTRY}</th>
                                        <th>{LOCALE:STATE}</th>
                                        <th>{LOCALE:CITY}</th>
                                        <th>{LOCALE:EVENT}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {BLOCK:BEGIN:TABLE_ROW}
                                    <tr class="{VALUE:ROW_CLASS}">
                                        <td>{VALUE:DATETIME}</td>
                                        <td>{VALUE:COUNTRY}</td>
                                        <td>{VALUE:STATE}</td>
                                        <td>{VALUE:CITY}</td>
                                        <td>{VALUE:EVENT}</td>
                                    </tr>
                                    {BLOCK:END:TABLE_ROW}
                                    </tbody>
                                </table>
                            </div>
                                    </div>
                                </div>
                            </div>
                            {CASE:END:TRUE}
                        {SWITCH:END:SHOW_TRACKING}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>