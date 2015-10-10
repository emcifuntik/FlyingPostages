<div class="row">
    <h1>{LOCALE:MY_PARCELS}</h1>
    <div class="col-lg-12">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th>#</th>
                    <th>{LOCALE:SENDER_NAME}</th>
                    <th>{LOCALE:RECIPIENT_NAME}</th>
                    <th>{LOCALE:TRACK_NUMBER}</th>
                </tr>
                </thead>
                <tbody>
                {BLOCK:BEGIN:TABLE_ROW}
                <tr>
                    <td>{VALUE:LABEL_ID}</td>
                    <td>{VALUE:SENDER_NAME}</td>
                    <td>{VALUE:RECIPIENT_NAME}</td>
                    <td>{VALUE:TRACK_NUMBER}</td>
                </tr>
                {BLOCK:END:TABLE_ROW}
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 col-md-offset-5">

        </div>
    </div>
</div>