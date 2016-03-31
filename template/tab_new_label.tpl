<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">{LOCALE:NEW_PARCEL}</h1>
    </div>
</div>
<div class="row">
    <div class="panel-body">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs">
            <li class="active"><a href="#home-pills" data-toggle="tab">{LOCALE:LOCAL}</a>
            </li>
            <li><a href="#profile-pills" data-toggle="tab">{LOCALE:INTERNATIONAL}</a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane fade in active" id="home-pills">
                <div class="row">
                    <br/>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <form role="form" method="post" action="index.php?action=post_label&route=domestic">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            {LOCALE:SENDER}
                                        </div>
                                        <div class="panel-body">
                                            <button type="button" class="btn btn-success btn-lg btn-block" data-toggle="modal" data-target="#modalTemplateSender">{LOCALE:SELECT_TEMPLATE}</button>
                                            <div class="modal fade" id="modalTemplateSender" tabindex="-1" role="dialog" aria-labelledby="modalTemplateSender" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title" id="myModalLabel">{LOCALE:SENDER_SELECT}</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="template">{LOCALE:TEMPLATE}</label>
                                                                        <select id="template" class="form-control">
                                                                            <option>{LOCALE:NOT_SELECTED}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12">
                                                                    <div class="panel panel-success">
                                                                        <div class="panel-heading">
                                                                            {LOCALE:PREVIEW}
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <label for="lt_sender_fromzip">{LOCALE:SHIP_FROM_ZIP}</label>
                                                                                <input type="number" id="lt_sender_fromzip" disabled class="form-control" required>
                                                                            </div>

                                                                            <div class="panel panel-default">
                                                                                <div class="panel-heading">
                                                                                    {LOCALE:RETURN_ADDRESS}
                                                                                </div>
                                                                                <div class="panel-body">
                                                                                    <!--Required Name or Company-->
                                                                                    <div class="form-group">
                                                                                        <label for="lt_sender_name">{LOCALE:NAME}</label>
                                                                                        <input type="text" id="lt_sender_name" disabled class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="lt_sender_company">{LOCALE:COMPANY}</label>
                                                                                        <input type="text" id="lt_sender_company" disabled class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="lt_sender_address">{LOCALE:ADDRESS}</label>
                                                                                        <input type="text" id="lt_sender_address" disabled required class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="lt_sender_additional">{LOCALE:ADD_TO_ADDRESS}</label>
                                                                                        <input type="text" id="lt_sender_additional" disabled class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="lt_sender_city">{LOCALE:CITY}</label>
                                                                                        <input type="text" id="lt_sender_city" disabled required class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="lt_sender_state">{LOCALE:STATE}</label>
                                                                                        <select id="lt_sender_state" disabled required class="form-control">
                                                                                            <option value="AL">Alabama</option>
                                                                                            <option value="AK">Alaska</option>
                                                                                            <option value="AZ">Arizona</option>
                                                                                            <option value="AR">Arkansas</option>
                                                                                            <option value="CA">California</option>
                                                                                            <option value="CO">Colorado</option>
                                                                                            <option value="CT">Connecticut</option>
                                                                                            <option value="DE">Delaware</option>
                                                                                            <option value="DC">District Of Columbia</option>
                                                                                            <option value="FL">Florida</option>
                                                                                            <option value="GA">Georgia</option>
                                                                                            <option value="HI">Hawaii</option>
                                                                                            <option value="ID">Idaho</option>
                                                                                            <option value="IL">Illinois</option>
                                                                                            <option value="IN">Indiana</option>
                                                                                            <option value="IA">Iowa</option>
                                                                                            <option value="KS">Kansas</option>
                                                                                            <option value="KY">Kentucky</option>
                                                                                            <option value="LA">Louisiana</option>
                                                                                            <option value="ME">Maine</option>
                                                                                            <option value="MD">Maryland</option>
                                                                                            <option value="MA">Massachusetts</option>
                                                                                            <option value="MI">Michigan</option>
                                                                                            <option value="MN">Minnesota</option>
                                                                                            <option value="MS">Mississippi</option>
                                                                                            <option value="MO">Missouri</option>
                                                                                            <option value="MT">Montana</option>
                                                                                            <option value="NE">Nebraska</option>
                                                                                            <option value="NV">Nevada</option>
                                                                                            <option value="NH">New Hampshire</option>
                                                                                            <option value="NJ">New Jersey</option>
                                                                                            <option value="NM">New Mexico</option>
                                                                                            <option value="NY">New York</option>
                                                                                            <option value="NC">North Carolina</option>
                                                                                            <option value="ND">North Dakota</option>
                                                                                            <option value="OH">Ohio</option>
                                                                                            <option value="OK">Oklahoma</option>
                                                                                            <option value="OR">Oregon</option>
                                                                                            <option value="PA">Pennsylvania</option>
                                                                                            <option value="RI">Rhode Island</option>
                                                                                            <option value="SC">South Carolina</option>
                                                                                            <option value="SD">South Dakota</option>
                                                                                            <option value="TN">Tennessee</option>
                                                                                            <option value="TX">Texas</option>
                                                                                            <option value="UT">Utah</option>
                                                                                            <option value="VT">Vermont</option>
                                                                                            <option value="VA">Virginia</option>
                                                                                            <option value="WA">Washington</option>
                                                                                            <option value="WV">West Virginia</option>
                                                                                            <option value="WI">Wisconsin</option>
                                                                                            <option value="WY">Wyoming</option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="lt_sender_zip">{LOCALE:ZIP_CODE}</label>
                                                                                        <input type="number" id="lt_sender_zip" disabled class="form-control" required>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="lt_sender_phone">{LOCALE:PHONE}</label>
                                                                                        <input type="tel" id="lt_sender_phone" disabled required class="form-control">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">{LOCALE:CANCEL}</button>
                                                            <button type="button" class="btn btn-primary">{LOCALE:CONFIRM}</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="form-group">
                                                <label for="l_sender_fromzip">{LOCALE:SHIP_FROM_ZIP}</label>
                                                <input type="number" name="from[fromzip]" id="l_sender_fromzip" class="form-control" required placeholder="Example: 12345">
                                            </div>

                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    {LOCALE:RETURN_ADDRESS}
                                                </div>
                                                <div class="panel-body">
                                                    <!--Required Name or Company-->
                                                    <div class="form-group">
                                                        <label for="l_sender_name">{LOCALE:NAME}</label>
                                                        <input type="text" name="from[name]" id="l_sender_name" class="form-control" placeholder="Example: James Smith">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="l_sender_company">{LOCALE:COMPANY}</label>
                                                        <input type="text" name="from[company]" id="l_sender_company" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="l_sender_address">{LOCALE:ADDRESS}</label>
                                                        <input type="text" name="from[address]" id="l_sender_address" required placeholder="Example: 795 E DRAGRAM" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="l_sender_additional">{LOCALE:ADD_TO_ADDRESS}</label>
                                                        <input type="text" name="from[additional]" id="l_sender_additional" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="l_sender_city">{LOCALE:CITY}</label>
                                                        <input type="text" name="from[city]" id="l_sender_city" required placeholder="Example: Tucson " class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="l_sender_state">{LOCALE:STATE}</label>
                                                        <select name="from[state]" id="l_sender_state" required class="form-control">
                                                            <option value="AL">Alabama</option>
                                                            <option value="AK">Alaska</option>
                                                            <option value="AZ">Arizona</option>
                                                            <option value="AR">Arkansas</option>
                                                            <option value="CA">California</option>
                                                            <option value="CO">Colorado</option>
                                                            <option value="CT">Connecticut</option>
                                                            <option value="DE">Delaware</option>
                                                            <option value="DC">District Of Columbia</option>
                                                            <option value="FL">Florida</option>
                                                            <option value="GA">Georgia</option>
                                                            <option value="HI">Hawaii</option>
                                                            <option value="ID">Idaho</option>
                                                            <option value="IL">Illinois</option>
                                                            <option value="IN">Indiana</option>
                                                            <option value="IA">Iowa</option>
                                                            <option value="KS">Kansas</option>
                                                            <option value="KY">Kentucky</option>
                                                            <option value="LA">Louisiana</option>
                                                            <option value="ME">Maine</option>
                                                            <option value="MD">Maryland</option>
                                                            <option value="MA">Massachusetts</option>
                                                            <option value="MI">Michigan</option>
                                                            <option value="MN">Minnesota</option>
                                                            <option value="MS">Mississippi</option>
                                                            <option value="MO">Missouri</option>
                                                            <option value="MT">Montana</option>
                                                            <option value="NE">Nebraska</option>
                                                            <option value="NV">Nevada</option>
                                                            <option value="NH">New Hampshire</option>
                                                            <option value="NJ">New Jersey</option>
                                                            <option value="NM">New Mexico</option>
                                                            <option value="NY">New York</option>
                                                            <option value="NC">North Carolina</option>
                                                            <option value="ND">North Dakota</option>
                                                            <option value="OH">Ohio</option>
                                                            <option value="OK">Oklahoma</option>
                                                            <option value="OR">Oregon</option>
                                                            <option value="PA">Pennsylvania</option>
                                                            <option value="RI">Rhode Island</option>
                                                            <option value="SC">South Carolina</option>
                                                            <option value="SD">South Dakota</option>
                                                            <option value="TN">Tennessee</option>
                                                            <option value="TX">Texas</option>
                                                            <option value="UT">Utah</option>
                                                            <option value="VT">Vermont</option>
                                                            <option value="VA">Virginia</option>
                                                            <option value="WA">Washington</option>
                                                            <option value="WV">West Virginia</option>
                                                            <option value="WI">Wisconsin</option>
                                                            <option value="WY">Wyoming</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="l_sender_zip">{LOCALE:ZIP_CODE}</label>
                                                        <input type="number" name="from[zip]" id="l_sender_zip" class="form-control" required placeholder="Example: 12345">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="l_sender_phone">{LOCALE:PHONE}</label>
                                                        <input type="tel" name="from[phone]" id="l_sender_phone" required placeholder="Example: +156489561984" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
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
                                            <button type="button" class="btn btn-success btn-lg btn-block" data-toggle="modal" data-target="#modalTemplateRecipient">{LOCALE:SELECT_TEMPLATE}</button>
                                            <div class="modal fade" id="modalTemplateRecipient" tabindex="-1" role="dialog" aria-labelledby="modalTemplateRecipient" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title" id="myModalLabel">{LOCALE:SENDER_SELECT}</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="template">{LOCALE:TEMPLATE}</label>
                                                                        <select id="template" class="form-control">
                                                                            <option>{LOCALE:NOT_SELECTED}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12">
                                                                    <div class="panel panel-success">
                                                                        <div class="panel-heading">
                                                                            {LOCALE:PREVIEW}
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <label for="lt_recipient_name">{LOCALE:NAME}</label>
                                                                                <input type="text" id="lt_recipient_name" disabled class="form-control" placeholder="Example: James Smith">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="lt_recipient_address">{LOCALE:ADDRESS}</label>
                                                                                <input type="text" id="lt_recipient_address" disabled required placeholder="Example: 795 E DRAGRAM" class="form-control">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="lt_recipient_additional">{LOCALE:ADD_TO_ADDRESS}</label>
                                                                                <input type="text" id="lt_recipient_additional" disabled class="form-control">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="lt_recipient_city">{LOCALE:CITY}</label>
                                                                                <input type="text" id="lt_recipient_city" disabled required placeholder="Example: Tucson" class="form-control">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="lt_recipient_state">{LOCALE:STATE}</label>
                                                                                <select id="lt_recipient_state" disabled required class="form-control">
                                                                                    <option value="AL">Alabama</option>
                                                                                    <option value="AK">Alaska</option>
                                                                                    <option value="AZ">Arizona</option>
                                                                                    <option value="AR">Arkansas</option>
                                                                                    <option value="CA">California</option>
                                                                                    <option value="CO">Colorado</option>
                                                                                    <option value="CT">Connecticut</option>
                                                                                    <option value="DE">Delaware</option>
                                                                                    <option value="DC">District Of Columbia</option>
                                                                                    <option value="FL">Florida</option>
                                                                                    <option value="GA">Georgia</option>
                                                                                    <option value="HI">Hawaii</option>
                                                                                    <option value="ID">Idaho</option>
                                                                                    <option value="IL">Illinois</option>
                                                                                    <option value="IN">Indiana</option>
                                                                                    <option value="IA">Iowa</option>
                                                                                    <option value="KS">Kansas</option>
                                                                                    <option value="KY">Kentucky</option>
                                                                                    <option value="LA">Louisiana</option>
                                                                                    <option value="ME">Maine</option>
                                                                                    <option value="MD">Maryland</option>
                                                                                    <option value="MA">Massachusetts</option>
                                                                                    <option value="MI">Michigan</option>
                                                                                    <option value="MN">Minnesota</option>
                                                                                    <option value="MS">Mississippi</option>
                                                                                    <option value="MO">Missouri</option>
                                                                                    <option value="MT">Montana</option>
                                                                                    <option value="NE">Nebraska</option>
                                                                                    <option value="NV">Nevada</option>
                                                                                    <option value="NH">New Hampshire</option>
                                                                                    <option value="NJ">New Jersey</option>
                                                                                    <option value="NM">New Mexico</option>
                                                                                    <option value="NY">New York</option>
                                                                                    <option value="NC">North Carolina</option>
                                                                                    <option value="ND">North Dakota</option>
                                                                                    <option value="OH">Ohio</option>
                                                                                    <option value="OK">Oklahoma</option>
                                                                                    <option value="OR">Oregon</option>
                                                                                    <option value="PA">Pennsylvania</option>
                                                                                    <option value="RI">Rhode Island</option>
                                                                                    <option value="SC">South Carolina</option>
                                                                                    <option value="SD">South Dakota</option>
                                                                                    <option value="TN">Tennessee</option>
                                                                                    <option value="TX">Texas</option>
                                                                                    <option value="UT">Utah</option>
                                                                                    <option value="VT">Vermont</option>
                                                                                    <option value="VA">Virginia</option>
                                                                                    <option value="WA">Washington</option>
                                                                                    <option value="WV">West Virginia</option>
                                                                                    <option value="WI">Wisconsin</option>
                                                                                    <option value="WY">Wyoming</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="lt_recipient_zip">{LOCALE:ZIP_CODE}</label>
                                                                                <input type="number" id="lt_recipient_zip" disabled class="form-control" required placeholder="Example: 12345">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="lt_recipient_phone">{LOCALE:PHONE}</label>
                                                                                <input type="tel" id="lt_recipient_phone" disabled required placeholder="Example: +156489561984" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">{LOCALE:CANCEL}</button>
                                                            <button type="button" class="btn btn-primary">{LOCALE:CONFIRM}</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="form-group">
                                                <label for="l_recipient_name">{LOCALE:NAME}</label>
                                                <input type="text" name="to[name]" id="l_recipient_name" class="form-control" placeholder="Example: James Smith">
                                            </div>
                                            <div class="form-group">
                                                <label for="l_recipient_address">{LOCALE:ADDRESS}</label>
                                                <input type="text" name="to[address]" id="l_recipient_address" required placeholder="Example: 795 E DRAGRAM" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="l_recipient_additional">{LOCALE:ADD_TO_ADDRESS}</label>
                                                <input type="text" name="to[additional]" id="l_recipient_additional" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="l_recipient_city">{LOCALE:CITY}</label>
                                                <input type="text" name="to[city]" id="l_recipient_city" required placeholder="Example: Tucson" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="l_recipient_state">{LOCALE:STATE}</label>
                                                <select name="to[state]" id="l_recipient_state" required class="form-control">
                                                    <option value="AL">Alabama</option>
                                                    <option value="AK">Alaska</option>
                                                    <option value="AZ">Arizona</option>
                                                    <option value="AR">Arkansas</option>
                                                    <option value="CA">California</option>
                                                    <option value="CO">Colorado</option>
                                                    <option value="CT">Connecticut</option>
                                                    <option value="DE">Delaware</option>
                                                    <option value="DC">District Of Columbia</option>
                                                    <option value="FL">Florida</option>
                                                    <option value="GA">Georgia</option>
                                                    <option value="HI">Hawaii</option>
                                                    <option value="ID">Idaho</option>
                                                    <option value="IL">Illinois</option>
                                                    <option value="IN">Indiana</option>
                                                    <option value="IA">Iowa</option>
                                                    <option value="KS">Kansas</option>
                                                    <option value="KY">Kentucky</option>
                                                    <option value="LA">Louisiana</option>
                                                    <option value="ME">Maine</option>
                                                    <option value="MD">Maryland</option>
                                                    <option value="MA">Massachusetts</option>
                                                    <option value="MI">Michigan</option>
                                                    <option value="MN">Minnesota</option>
                                                    <option value="MS">Mississippi</option>
                                                    <option value="MO">Missouri</option>
                                                    <option value="MT">Montana</option>
                                                    <option value="NE">Nebraska</option>
                                                    <option value="NV">Nevada</option>
                                                    <option value="NH">New Hampshire</option>
                                                    <option value="NJ">New Jersey</option>
                                                    <option value="NM">New Mexico</option>
                                                    <option value="NY">New York</option>
                                                    <option value="NC">North Carolina</option>
                                                    <option value="ND">North Dakota</option>
                                                    <option value="OH">Ohio</option>
                                                    <option value="OK">Oklahoma</option>
                                                    <option value="OR">Oregon</option>
                                                    <option value="PA">Pennsylvania</option>
                                                    <option value="RI">Rhode Island</option>
                                                    <option value="SC">South Carolina</option>
                                                    <option value="SD">South Dakota</option>
                                                    <option value="TN">Tennessee</option>
                                                    <option value="TX">Texas</option>
                                                    <option value="UT">Utah</option>
                                                    <option value="VT">Vermont</option>
                                                    <option value="VA">Virginia</option>
                                                    <option value="WA">Washington</option>
                                                    <option value="WV">West Virginia</option>
                                                    <option value="WI">Wisconsin</option>
                                                    <option value="WY">Wyoming</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="l_recipient_zip">{LOCALE:ZIP_CODE}</label>
                                                <input type="number" name="to[zip]" id="l_recipient_zip" class="form-control" required placeholder="Example: 12345">
                                            </div>
                                            <div class="form-group">
                                                <label for="l_recipient_phone">{LOCALE:PHONE}</label>
                                                <input type="tel" name="to[phone]" id="l_recipient_phone" required placeholder="Example: +156489561984" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            {LOCALE:PARCEL_OPTIONS}
                                        </div>
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label for="l_package_type">{LOCALE:PACKAGE_TYPE}</label>
                                                <select name="params[package_type]" id="l_package_type" class="form-control">
                                                    <option selected>Package</option>
                                                    <option>Postcard</option>
                                                    <option>Letter</option>
                                                    <option>Large Envelope or Flat</option>
                                                    <option>Thick Envelope</option>
                                                    <option>Small Flat Rate Box</option>
                                                    <option>Flat Rate Box</option>
                                                    <option>Large Flat Rate Box</option>
                                                    <option>Flat Rate Envelope</option>
                                                    <option>Flat Rate Padded Envelope</option>
                                                    <option>Large Package</option>
                                                    <option>Oversized Package</option>
                                                    <option>Regional Rate Box A</option>
                                                    <option>Regional Rate Box B</option>
                                                    <option>Regional Rate Box C</option>
                                                    <option>Legal Flat Rate Envelope</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="l_service_type">{LOCALE:SERVICE_TYPE}</label>
                                                <select name="params[service_type]" id="l_service_type" class="form-control">
                                                    <option value="US-MM">Media Mail</option>
                                                    <option value="US-PS">Parcel Select</option>
                                                    <option value="US-XM">Express</option>
                                                    <option selected value="US-PM">Priority</option>
                                                    <option value="US-FC">First-Class</option>
                                                </select>
                                            </div>
                                            <label for="l_recipient_address">{LOCALE:WEIGHT}</label>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <input type="number" name="params[weight_lbs]" min="0" max="70" id="l_params_lbs" required placeholder="lbs" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <input type="number" name="params[weight_oz]" min="0" max="15" id="l_params_oz" required placeholder="oz" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="checkbox">
                                                    <label data-toggle="tooltip" data-placement="top" title="{LOCALE:SMS_NOTIFY_INFO}">
                                                        <input name="params[sms_notification]" type="checkbox">{LOCALE:SMS_NOTIFY}
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="checkbox">
                                                    <label data-toggle="tooltip" data-placement="top" title="{LOCALE:AUTO_REFUND_INFO}">
                                                        <input name="params[auto_refund]" type="checkbox">{LOCALE:AUTO_REFUND}
                                                    </label>
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn-success btn-lg btn-block" value="{LOCALE:CONTINUE}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="profile-pills">
                <div class="row">
                    <br/>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <form role="form">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            {LOCALE:SENDER}
                                        </div>
                                        <div class="panel-body">
                                            <button type="button" class="btn btn-success btn-lg btn-block" data-toggle="modal" data-target="#modalTemplateIntSender">{LOCALE:SELECT_TEMPLATE}</button>
                                            <div class="modal fade" id="modalTemplateIntSender" tabindex="-1" role="dialog" aria-labelledby="modalTemplateIntSender" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title" id="myModalLabel">{LOCALE:SENDER_SELECT}</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="template">{LOCALE:TEMPLATE}</label>
                                                                        <select id="template" class="form-control">
                                                                            <option>{LOCALE:NOT_SELECTED}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12">
                                                                    <div class="panel panel-success">
                                                                        <div class="panel-heading">
                                                                            {LOCALE:PREVIEW}
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <label for="it_sender_fromzip">{LOCALE:SHIP_FROM_ZIP}</label>
                                                                                <input type="number" id="it_sender_fromzip" disabled class="form-control" required>
                                                                            </div>

                                                                            <div class="panel panel-default">
                                                                                <div class="panel-heading">
                                                                                    {LOCALE:RETURN_ADDRESS}
                                                                                </div>
                                                                                <div class="panel-body">
                                                                                    <!--Required Name or Company-->
                                                                                    <div class="form-group">
                                                                                        <label for="it_sender_name">{LOCALE:NAME}</label>
                                                                                        <input type="text" id="it_sender_name" disabled class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="it_sender_company">{LOCALE:COMPANY}</label>
                                                                                        <input type="text" id="it_sender_company" disabled class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="it_sender_address">{LOCALE:ADDRESS}</label>
                                                                                        <input type="text" id="it_sender_address" disabled required class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="it_sender_additional">{LOCALE:ADD_TO_ADDRESS}</label>
                                                                                        <input type="text" id="it_sender_additional" disabled class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="it_sender_city">{LOCALE:CITY}</label>
                                                                                        <input type="text" id="it_sender_city" disabled required class="form-control">
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="it_sender_state">{LOCALE:STATE}</label>
                                                                                        <select id="it_sender_state" disabled required class="form-control">
                                                                                            <option value="AL">Alabama</option>
                                                                                            <option value="AK">Alaska</option>
                                                                                            <option value="AZ">Arizona</option>
                                                                                            <option value="AR">Arkansas</option>
                                                                                            <option value="CA">California</option>
                                                                                            <option value="CO">Colorado</option>
                                                                                            <option value="CT">Connecticut</option>
                                                                                            <option value="DE">Delaware</option>
                                                                                            <option value="DC">District Of Columbia</option>
                                                                                            <option value="FL">Florida</option>
                                                                                            <option value="GA">Georgia</option>
                                                                                            <option value="HI">Hawaii</option>
                                                                                            <option value="ID">Idaho</option>
                                                                                            <option value="IL">Illinois</option>
                                                                                            <option value="IN">Indiana</option>
                                                                                            <option value="IA">Iowa</option>
                                                                                            <option value="KS">Kansas</option>
                                                                                            <option value="KY">Kentucky</option>
                                                                                            <option value="LA">Louisiana</option>
                                                                                            <option value="ME">Maine</option>
                                                                                            <option value="MD">Maryland</option>
                                                                                            <option value="MA">Massachusetts</option>
                                                                                            <option value="MI">Michigan</option>
                                                                                            <option value="MN">Minnesota</option>
                                                                                            <option value="MS">Mississippi</option>
                                                                                            <option value="MO">Missouri</option>
                                                                                            <option value="MT">Montana</option>
                                                                                            <option value="NE">Nebraska</option>
                                                                                            <option value="NV">Nevada</option>
                                                                                            <option value="NH">New Hampshire</option>
                                                                                            <option value="NJ">New Jersey</option>
                                                                                            <option value="NM">New Mexico</option>
                                                                                            <option value="NY">New York</option>
                                                                                            <option value="NC">North Carolina</option>
                                                                                            <option value="ND">North Dakota</option>
                                                                                            <option value="OH">Ohio</option>
                                                                                            <option value="OK">Oklahoma</option>
                                                                                            <option value="OR">Oregon</option>
                                                                                            <option value="PA">Pennsylvania</option>
                                                                                            <option value="RI">Rhode Island</option>
                                                                                            <option value="SC">South Carolina</option>
                                                                                            <option value="SD">South Dakota</option>
                                                                                            <option value="TN">Tennessee</option>
                                                                                            <option value="TX">Texas</option>
                                                                                            <option value="UT">Utah</option>
                                                                                            <option value="VT">Vermont</option>
                                                                                            <option value="VA">Virginia</option>
                                                                                            <option value="WA">Washington</option>
                                                                                            <option value="WV">West Virginia</option>
                                                                                            <option value="WI">Wisconsin</option>
                                                                                            <option value="WY">Wyoming</option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="it_sender_zip">{LOCALE:ZIP_CODE}</label>
                                                                                        <input type="number" id="it_sender_zip" disabled class="form-control" required>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="it_sender_phone">{LOCALE:PHONE}</label>
                                                                                        <input type="tel" id="it_sender_phone" disabled required class="form-control">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">{LOCALE:CANCEL}</button>
                                                            <button type="button" class="btn btn-primary">{LOCALE:CONFIRM}</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="form-group">
                                                <label for="i_sender_fromzip">{LOCALE:SHIP_FROM_ZIP}</label>
                                                <input type="number" name="from[fromzip]" id="i_sender_fromzip" class="form-control" required placeholder="Example: 12345">
                                            </div>

                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    {LOCALE:RETURN_ADDRESS}
                                                </div>
                                                <div class="panel-body">
                                                    <!--Required Name or Company-->
                                                    <div class="form-group">
                                                        <label for="i_sender_name">{LOCALE:NAME}</label>
                                                        <input type="text" name="from[name]" id="i_sender_name" class="form-control" placeholder="Example: James Smith">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="i_sender_company">{LOCALE:COMPANY}</label>
                                                        <input type="text" name="from[company]" id="i_sender_company" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="i_sender_address">{LOCALE:ADDRESS}</label>
                                                        <input type="text" name="from[address]" id="i_sender_address" required placeholder="Example: 795 E DRAGRAM" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="i_sender_additional">{LOCALE:ADD_TO_ADDRESS}</label>
                                                        <input type="text" name="from[additional]" id="i_sender_additional" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="i_sender_city">{LOCALE:CITY}</label>
                                                        <input type="text" name="from[city]" id="i_sender_city" required placeholder="Example: Tucson " class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="i_sender_state">{LOCALE:STATE}</label>
                                                        <select name="from[state]" id="i_sender_state" required class="form-control">
                                                            <option value="AL">Alabama</option>
                                                            <option value="AK">Alaska</option>
                                                            <option value="AZ">Arizona</option>
                                                            <option value="AR">Arkansas</option>
                                                            <option value="CA">California</option>
                                                            <option value="CO">Colorado</option>
                                                            <option value="CT">Connecticut</option>
                                                            <option value="DE">Delaware</option>
                                                            <option value="DC">District Of Columbia</option>
                                                            <option value="FL">Florida</option>
                                                            <option value="GA">Georgia</option>
                                                            <option value="HI">Hawaii</option>
                                                            <option value="ID">Idaho</option>
                                                            <option value="IL">Illinois</option>
                                                            <option value="IN">Indiana</option>
                                                            <option value="IA">Iowa</option>
                                                            <option value="KS">Kansas</option>
                                                            <option value="KY">Kentucky</option>
                                                            <option value="LA">Louisiana</option>
                                                            <option value="ME">Maine</option>
                                                            <option value="MD">Maryland</option>
                                                            <option value="MA">Massachusetts</option>
                                                            <option value="MI">Michigan</option>
                                                            <option value="MN">Minnesota</option>
                                                            <option value="MS">Mississippi</option>
                                                            <option value="MO">Missouri</option>
                                                            <option value="MT">Montana</option>
                                                            <option value="NE">Nebraska</option>
                                                            <option value="NV">Nevada</option>
                                                            <option value="NH">New Hampshire</option>
                                                            <option value="NJ">New Jersey</option>
                                                            <option value="NM">New Mexico</option>
                                                            <option value="NY">New York</option>
                                                            <option value="NC">North Carolina</option>
                                                            <option value="ND">North Dakota</option>
                                                            <option value="OH">Ohio</option>
                                                            <option value="OK">Oklahoma</option>
                                                            <option value="OR">Oregon</option>
                                                            <option value="PA">Pennsylvania</option>
                                                            <option value="RI">Rhode Island</option>
                                                            <option value="SC">South Carolina</option>
                                                            <option value="SD">South Dakota</option>
                                                            <option value="TN">Tennessee</option>
                                                            <option value="TX">Texas</option>
                                                            <option value="UT">Utah</option>
                                                            <option value="VT">Vermont</option>
                                                            <option value="VA">Virginia</option>
                                                            <option value="WA">Washington</option>
                                                            <option value="WV">West Virginia</option>
                                                            <option value="WI">Wisconsin</option>
                                                            <option value="WY">Wyoming</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="i_sender_zip">{LOCALE:ZIP_CODE}</label>
                                                        <input type="number" name="from[zip]" id="i_sender_zip" class="form-control" required placeholder="Example: 12345">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="i_sender_phone">{LOCALE:PHONE}</label>
                                                        <input type="tel" name="from[phone]" id="i_sender_phone" required placeholder="Example: +156489561984" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
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
                                            <button type="button" class="btn btn-success btn-lg btn-block" data-toggle="modal" data-target="#modalTemplateIntRecipient">{LOCALE:SELECT_TEMPLATE}</button>
                                            <div class="modal fade" id="modalTemplateIntRecipient" tabindex="-1" role="dialog" aria-labelledby="modalTemplateIntRecipient" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title" id="myModalLabel">{LOCALE:SENDER_SELECT}</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="template">{LOCALE:TEMPLATE}</label>
                                                                        <select id="template" class="form-control">
                                                                            <option>{LOCALE:NOT_SELECTED}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12">
                                                                    <div class="panel panel-success">
                                                                        <div class="panel-heading">
                                                                            {LOCALE:PREVIEW}
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <label for="it_recipient_name">{LOCALE:NAME}</label>
                                                                                <input type="text" id="it_recipient_name" disabled class="form-control" placeholder="Example: James Smith">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="it_recipient_address">{LOCALE:ADDRESS}</label>
                                                                                <input type="text" id="it_recipient_address" disabled required placeholder="Example: 795 E DRAGRAM" class="form-control">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="it_recipient_additional">{LOCALE:ADD_TO_ADDRESS}</label>
                                                                                <input type="text" id="it_recipient_additional" disabled class="form-control">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="it_recipient_city">{LOCALE:CITY}</label>
                                                                                <input type="text" id="it_recipient_city" disabled required placeholder="Example: Tucson" class="form-control">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="it_recipient_state">{LOCALE:STATE}</label>
                                                                                <select id="it_recipient_state" disabled required class="form-control">
                                                                                    <option value="AL">Alabama</option>
                                                                                    <option value="AK">Alaska</option>
                                                                                    <option value="AZ">Arizona</option>
                                                                                    <option value="AR">Arkansas</option>
                                                                                    <option value="CA">California</option>
                                                                                    <option value="CO">Colorado</option>
                                                                                    <option value="CT">Connecticut</option>
                                                                                    <option value="DE">Delaware</option>
                                                                                    <option value="DC">District Of Columbia</option>
                                                                                    <option value="FL">Florida</option>
                                                                                    <option value="GA">Georgia</option>
                                                                                    <option value="HI">Hawaii</option>
                                                                                    <option value="ID">Idaho</option>
                                                                                    <option value="IL">Illinois</option>
                                                                                    <option value="IN">Indiana</option>
                                                                                    <option value="IA">Iowa</option>
                                                                                    <option value="KS">Kansas</option>
                                                                                    <option value="KY">Kentucky</option>
                                                                                    <option value="LA">Louisiana</option>
                                                                                    <option value="ME">Maine</option>
                                                                                    <option value="MD">Maryland</option>
                                                                                    <option value="MA">Massachusetts</option>
                                                                                    <option value="MI">Michigan</option>
                                                                                    <option value="MN">Minnesota</option>
                                                                                    <option value="MS">Mississippi</option>
                                                                                    <option value="MO">Missouri</option>
                                                                                    <option value="MT">Montana</option>
                                                                                    <option value="NE">Nebraska</option>
                                                                                    <option value="NV">Nevada</option>
                                                                                    <option value="NH">New Hampshire</option>
                                                                                    <option value="NJ">New Jersey</option>
                                                                                    <option value="NM">New Mexico</option>
                                                                                    <option value="NY">New York</option>
                                                                                    <option value="NC">North Carolina</option>
                                                                                    <option value="ND">North Dakota</option>
                                                                                    <option value="OH">Ohio</option>
                                                                                    <option value="OK">Oklahoma</option>
                                                                                    <option value="OR">Oregon</option>
                                                                                    <option value="PA">Pennsylvania</option>
                                                                                    <option value="RI">Rhode Island</option>
                                                                                    <option value="SC">South Carolina</option>
                                                                                    <option value="SD">South Dakota</option>
                                                                                    <option value="TN">Tennessee</option>
                                                                                    <option value="TX">Texas</option>
                                                                                    <option value="UT">Utah</option>
                                                                                    <option value="VT">Vermont</option>
                                                                                    <option value="VA">Virginia</option>
                                                                                    <option value="WA">Washington</option>
                                                                                    <option value="WV">West Virginia</option>
                                                                                    <option value="WI">Wisconsin</option>
                                                                                    <option value="WY">Wyoming</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="it_recipient_zip">{LOCALE:ZIP_CODE}</label>
                                                                                <input type="number" id="it_recipient_zip" disabled class="form-control" required placeholder="Example: 12345">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="it_recipient_phone">{LOCALE:PHONE}</label>
                                                                                <input type="tel" id="it_recipient_phone" disabled required placeholder="Example: +156489561984" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">{LOCALE:CANCEL}</button>
                                                            <button type="button" class="btn btn-primary">{LOCALE:CONFIRM}</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="form-group">
                                                <label for="i_recipient_name">{LOCALE:NAME}</label>
                                                <input type="text" name="to[name]" id="i_recipient_name" class="form-control" placeholder="Example: James Smith">
                                            </div>
                                            <div class="form-group">
                                                <label for="i_recipient_address">{LOCALE:ADDRESS}</label>
                                                <input type="text" name="to[address]" id="i_recipient_address" required placeholder="Example: 795 E DRAGRAM" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="i_recipient_additional">{LOCALE:ADD_TO_ADDRESS}</label>
                                                <input type="text" name="to[additional]" id="i_recipient_additional" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="i_recipient_country">{LOCALE:COUNTRY}</label>
                                                <select name="to[country]" id="i_recipient_country" class="form-control">
                                                    <option value="AF">Afghanistan</option>
                                                    <option value="AL">Albania</option>
                                                    <option value="DZ">Algeria</option>
                                                    <option value="AD">Andorra</option>
                                                    <option value="AO">Angola</option>
                                                    <option value="AI">Anguilla</option>
                                                    <option value="AG">Antigua and Barbuda</option>
                                                    <option value="AR">Argentina</option>
                                                    <option value="AM">Armenia</option>
                                                    <option value="AW">Aruba</option>
                                                    <option value="AU">Australia</option>
                                                    <option value="AT">Austria</option>
                                                    <option value="AZ">Azerbaijan</option>
                                                    <option value="BS">Bahamas</option>
                                                    <option value="BH">Bahrain</option>
                                                    <option value="BD">Bangladesh</option>
                                                    <option value="BB">Barbados</option>
                                                    <option value="BY">Belarus</option>
                                                    <option value="BE">Belgium</option>
                                                    <option value="BZ">Belize</option>
                                                    <option value="BJ">Benin</option>
                                                    <option value="BM">Bermuda</option>
                                                    <option value="BT">Bhutan</option>
                                                    <option value="BO">Bolivia</option>
                                                    <option value="BA">Bosnia-Herzegovina</option>
                                                    <option value="BW">Botswana</option>
                                                    <option value="BR">Brazil</option>
                                                    <option value="VG">British Virgin Islands</option>
                                                    <option value="BN">Brunei Darussalam</option>
                                                    <option value="BG">Bulgaria</option>
                                                    <option value="BF">Burkina Faso</option>
                                                    <option value="MM">Burma (Myanmar)</option>
                                                    <option value="BI">Burundi</option>
                                                    <option value="KH">Cambodia</option>
                                                    <option value="CM">Cameroon</option>
                                                    <option value="CA">Canada</option>
                                                    <option value="CV">Cape Verde</option>
                                                    <option value="KY">Cayman Islands</option>
                                                    <option value="CF">Central African Republic</option>
                                                    <option value="TD">Chad</option>
                                                    <option value="CL">Chile</option>
                                                    <option value="CN">China</option>
                                                    <option value="CO">Colombia</option>
                                                    <option value="KM">Comoros</option>
                                                    <option value="CD">Congo, Democratic Republic of the</option>
                                                    <option value="CG">Congo, Republic of the</option>
                                                    <option value="CR">Costa Rica</option>
                                                    <option value="CI">Cote d'Ivoire (Ivory Coast)</option>
                                                    <option value="HR">Croatia</option>
                                                    <option value="CU">Cuba</option>
                                                    <option value="CY">Cyprus</option>
                                                    <option value="CZ">Czech Republic</option>
                                                    <option value="DK">Denmark</option>
                                                    <option value="DJ">Djibouti</option>
                                                    <option value="DM">Dominica</option>
                                                    <option value="DO">Dominican Republic</option>
                                                    <option value="EC">Ecuador</option>
                                                    <option value="EG">Egypt</option>
                                                    <option value="SV">El Salvador</option>
                                                    <option value="GQ">Equatorial Guinea</option>
                                                    <option value="ER">Eritrea</option>
                                                    <option value="EE">Estonia</option>
                                                    <option value="ET">Ethiopia</option>
                                                    <option value="FK">Falkland Islands</option>
                                                    <option value="FO">Faroe Islands</option>
                                                    <option value="FJ">Fiji</option>
                                                    <option value="FI">Finland</option>
                                                    <option value="FR">France</option>
                                                    <option value="GF">French Guiana</option>
                                                    <option value="PF">French Polynesia</option>
                                                    <option value="GA">Gabon</option>
                                                    <option value="GM">Gambia</option>
                                                    <option value="GE">Georgia, Republic of</option>
                                                    <option value="DE">Germany</option>
                                                    <option value="GH">Ghana</option>
                                                    <option value="GI">Gibraltar</option>
                                                    <option value="GB">Great Britain and Northern Ireland</option>
                                                    <option value="GR">Greece</option>
                                                    <option value="GL">Greenland</option>
                                                    <option value="GD">Grenada</option>
                                                    <option value="GP">Guadeloupe</option>
                                                    <option value="GT">Guatemala</option>
                                                    <option value="GN">Guinea</option>
                                                    <option value="GW">Guinea-Bissau</option>
                                                    <option value="GY">Guyana</option>
                                                    <option value="HT">Haiti</option>
                                                    <option value="HN">Honduras</option>
                                                    <option value="HK">Hong Kong</option>
                                                    <option value="HU">Hungary</option>
                                                    <option value="IS">Iceland</option>
                                                    <option value="IN">India</option>
                                                    <option value="ID">Indonesia</option>
                                                    <option value="IR">Iran</option>
                                                    <option value="IQ">Iraq</option>
                                                    <option value="IE">Ireland</option>
                                                    <option value="IL">Israel</option>
                                                    <option value="IT">Italy</option>
                                                    <option value="JM">Jamaica</option>
                                                    <option value="JP">Japan</option>
                                                    <option value="JO">Jordan</option>
                                                    <option value="KZ">Kazakhstan</option>
                                                    <option value="KE">Kenya</option>
                                                    <option value="KI">Kiribati</option>
                                                    <option value="KP">Korea, Democratic Peoples Republic of (North Korea)</option>
                                                    <option value="KR">Korea, Republic of (South Korea)</option>
                                                    <option value="XZ">Kosovo</option>
                                                    <option value="KW">Kuwait</option>
                                                    <option value="KG">Kyrgyzstan</option>
                                                    <option value="LA">Laos</option>
                                                    <option value="LV">Latvia</option>
                                                    <option value="LB">Lebanon</option>
                                                    <option value="LS">Lesotho</option>
                                                    <option value="LR">Liberia</option>
                                                    <option value="LY">Libya</option>
                                                    <option value="LI">Liechtenstein</option>
                                                    <option value="LT">Lithuania</option>
                                                    <option value="LU">Luxembourg</option>
                                                    <option value="MO">Macao</option>
                                                    <option value="MK">Macedonia, Republic of</option>
                                                    <option value="MG">Madagascar</option>
                                                    <option value="MW">Malawi</option>
                                                    <option value="MY">Malaysia</option>
                                                    <option value="MV">Maldives</option>
                                                    <option value="ML">Mali</option>
                                                    <option value="MT">Malta</option>
                                                    <option value="MQ">Martinique</option>
                                                    <option value="MR">Mauritania</option>
                                                    <option value="MU">Mauritius</option>
                                                    <option value="MX">Mexico</option>
                                                    <option value="MD">Moldova</option>
                                                    <option value="MC">Monaco (France)</option>
                                                    <option value="MN">Mongolia</option>
                                                    <option value="ME">Montenegro</option>
                                                    <option value="MS">Montserrat</option>
                                                    <option value="MA">Morocco</option>
                                                    <option value="MZ">Mozambique</option>
                                                    <option value="NA">Namibia</option>
                                                    <option value="NR">Nauru</option>
                                                    <option value="NP">Nepal</option>
                                                    <option value="NL">Netherlands</option>
                                                    <option value="AN">Netherlands Antilles</option>
                                                    <option value="NC">New Caledonia</option>
                                                    <option value="NZ">New Zealand</option>
                                                    <option value="NI">Nicaragua</option>
                                                    <option value="NE">Niger</option>
                                                    <option value="NG">Nigeria</option>
                                                    <option value="NO">Norway</option>
                                                    <option value="OM">Oman</option>
                                                    <option value="PK">Pakistan</option>
                                                    <option value="PA">Panama</option>
                                                    <option value="PG">Papua New Guinea</option>
                                                    <option value="PY">Paraguay</option>
                                                    <option value="PE">Peru</option>
                                                    <option value="PH">Philippines</option>
                                                    <option value="PN">Pitcairn Island</option>
                                                    <option value="PL">Poland</option>
                                                    <option value="PT">Portugal</option>
                                                    <option value="QA">Qatar</option>
                                                    <option value="RE">Reunion</option>
                                                    <option value="RO">Romania</option>
                                                    <option value="RU">Russia</option>
                                                    <option value="RW">Rwanda</option>
                                                    <option value="KN">Saint Christopher and Nevis</option>
                                                    <option value="SH">Saint Helena</option>
                                                    <option value="LC">Saint Lucia</option>
                                                    <option value="PM">Saint Pierre and Miquelon</option>
                                                    <option value="VC">Saint Vincent and the Grenadines</option>
                                                    <option value="SM">San Marino</option>
                                                    <option value="ST">Sao Tome and Principe</option>
                                                    <option value="SA">Saudi Arabia</option>
                                                    <option value="SN">Senegal</option>
                                                    <option value="RS">Serbia, Republic of</option>
                                                    <option value="SC">Seychelles</option>
                                                    <option value="SL">Sierra Leone</option>
                                                    <option value="SG">Singapore</option>
                                                    <option value="SX">Sint Maarten</option>
                                                    <option value="SK">Slovak Republic</option>
                                                    <option value="SI">Slovenia</option>
                                                    <option value="SB">Solomon Islands</option>
                                                    <option value="ZA">South Africa</option>
                                                    <option value="ES">Spain</option>
                                                    <option value="LK">Sri Lanka</option>
                                                    <option value="SD">Sudan</option>
                                                    <option value="SR">Suriname</option>
                                                    <option value="SZ">Swaziland</option>
                                                    <option value="SE">Sweden</option>
                                                    <option value="CH">Switzerland</option>
                                                    <option value="SY">Syrian Arab Republic</option>
                                                    <option value="TW">Taiwan</option>
                                                    <option value="TJ">Tajikistan</option>
                                                    <option value="TZ">Tanzania</option>
                                                    <option value="TH">Thailand</option>
                                                    <option value="TG">Togo</option>
                                                    <option value="TO">Tonga</option>
                                                    <option value="TT">Trinidad and Tobago</option>
                                                    <option value="TN">Tunisia</option>
                                                    <option value="TR">Turkey</option>
                                                    <option value="TM">Turkmenistan</option>
                                                    <option value="TC">Turks and Caicos Islands</option>
                                                    <option value="TV">Tuvalu</option>
                                                    <option value="UG">Uganda</option>
                                                    <option value="UA">Ukraine</option>
                                                    <option value="AE">United Arab Emirates</option>
                                                    <option value="UY">Uruguay</option>
                                                    <option value="UZ">Uzbekistan</option>
                                                    <option value="VU">Vanuatu</option>
                                                    <option value="VA">Vatican City</option>
                                                    <option value="VE">Venezuela</option>
                                                    <option value="VN">Vietnam</option>
                                                    <option value="WF">Wallis and Futuna Islands</option>
                                                    <option value="WS">Western Samoa</option>
                                                    <option value="YE">Yemen</option>
                                                    <option value="ZM">Zambia</option>
                                                    <option value="ZW">Zimbabwe</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="i_recipient_city">{LOCALE:CITY}</label>
                                                <input type="text" name="to[city]" id="i_recipient_city" required placeholder="Example: Tucson" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="i_recipient_postal">{LOCALE:POSTAL_CODE}</label>
                                                <input type="number" name="to[zip]" id="i_recipient_postal" class="form-control" required placeholder="Example: 123456">
                                            </div>
                                            <div class="form-group">
                                                <label for="i_recipient_phone">{LOCALE:PHONE}</label>
                                                <input type="tel" name="to[phone]" id="i_recipient_phone" required placeholder="Example: +156489561984" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            {LOCALE:PARCEL_OPTIONS}
                                        </div>
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label for="l_package_type">{LOCALE:PACKAGE_TYPE}</label>
                                                <select name="params[package_type]" id="l_package_type" class="form-control">
                                                    <option selected="" value="0">Package</option>
                                                    <option value="1">Postcard</option>
                                                    <option value="2">Letter</option>
                                                    <option value="3">Large Envelope or Flat</option>
                                                    <option value="4">Thick Envelope</option>
                                                    <option value="5">Small Flat Rate Box</option>
                                                    <option value="6">Flat Rate Box</option>
                                                    <option value="7">Large Flat Rate Box</option>
                                                    <option value="8">Flat Rate Envelope</option>
                                                    <option value="9">Flat Rate Padded Envelope</option>
                                                    <option value="10">Large Package</option>
                                                    <option value="11">Oversized Package</option>
                                                    <option value="12">Regional Rate Box A</option>
                                                    <option value="13">Regional Rate Box B</option>
                                                    <option value="14">Regional Rate Box C</option>
                                                    <option value="15">Legal Flat Rate Envelope</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="l_service_type">{LOCALE:SERVICE_TYPE}</label>
                                                <select name="params[service_type]" id="l_service_type" class="form-control">
                                                    <option value="2">Express</option>
                                                    <option selected="" value="1">Priority</option>
                                                    <option value="0">First-Class</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <div class="checkbox">
                                                    <label data-toggle="tooltip" data-placement="top" title="{LOCALE:SMS_NOTIFY_INFO}">
                                                        <input type="checkbox" value="">{LOCALE:SMS_NOTIFY}
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="checkbox">
                                                    <label data-toggle="tooltip" data-placement="top" title="{LOCALE:AUTO_REFUND_INFO}">
                                                        <input type="checkbox" value="">{LOCALE:AUTO_REFUND}
                                                    </label>
                                                </div>
                                            </div>
                                            <button type="button" class="btn btn-warning btn-lg btn-block" data-toggle="modal" data-target="#modalContent">{LOCALE:CONTENT}</button>
                                            <div class="modal fade" id="modalContent" tabindex="-1" role="dialog" aria-labelledby="modalContent" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title" id="myModalLabel">{LOCALE:CONTENT}</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group">
                                                                        <label for="i_content_type">{LOCALE:CONTENT_TYPE}</label>
                                                                        <select name="content[type]" class="form-control" id="i_content_type">
                                                                            <option value="Commercial Sample">Commercial Sample</option>
                                                                            <option value="Dangerous Goods">Dangerous Goods</option>
                                                                            <option value="Document">Document</option>
                                                                            <option selected value="Gift">Gift</option>
                                                                            <option value="Humanitarian Donation">Humanitarian Donation</option>
                                                                            <option value="Merchandise">Merchandise</option>
                                                                            <option value="Returned Goods">Returned Goods</option>
                                                                            <option value="Other">Other</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="form-group">
                                                                        <label for="i_content_description">{LOCALE:CONTENT_DESCRIPTION}</label>
                                                                        <input type="text" name="content[description]" class="form-control" id="i_content_description"/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-primary">{LOCALE:CONFIRM}</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr/>
                                            <button type="button" class="btn btn-success btn-lg btn-block">{LOCALE:CONTINUE}</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
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