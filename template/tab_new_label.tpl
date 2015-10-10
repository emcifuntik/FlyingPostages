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
                        <form role="form">
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
                                                                                            <option>Alabama</option>
                                                                                            <option>Alaska</option>
                                                                                            <option>American Samoa</option>
                                                                                            <option>Arizona</option>
                                                                                            <option>Arkansas</option>
                                                                                            <option>California</option>
                                                                                            <option>Colorado</option>
                                                                                            <option>Connecticut</option>
                                                                                            <option>Delaware</option>
                                                                                            <option>District Of Columbia</option>
                                                                                            <option>Federated States Of Micronesia</option>
                                                                                            <option>Florida</option>
                                                                                            <option>Georgia</option>
                                                                                            <option>Guam</option>
                                                                                            <option>Hawaii</option>
                                                                                            <option>Idaho</option>
                                                                                            <option>Illinois</option>
                                                                                            <option>Indiana</option>
                                                                                            <option>Iowa</option>
                                                                                            <option>Kansas</option>
                                                                                            <option>Kentucky</option>
                                                                                            <option>Louisiana</option>
                                                                                            <option>Maine</option>
                                                                                            <option>Marshall Islands</option>
                                                                                            <option>Maryland</option>
                                                                                            <option>Massachusetts</option>
                                                                                            <option>Michigan</option>
                                                                                            <option>Minnesota</option>
                                                                                            <option>Mississippi</option>
                                                                                            <option>Missouri</option>
                                                                                            <option>Montana</option>
                                                                                            <option>Nebraska</option>
                                                                                            <option>Nevada</option>
                                                                                            <option>New Hampshire</option>
                                                                                            <option>New Jersey</option>
                                                                                            <option>New Mexico</option>
                                                                                            <option>New York</option>
                                                                                            <option>North Carolina</option>
                                                                                            <option>North Dakota</option>
                                                                                            <option>Northern Mariana Islands</option>
                                                                                            <option>Ohio</option>
                                                                                            <option>Oklahoma</option>
                                                                                            <option>Oregon</option>
                                                                                            <option>Palau</option>
                                                                                            <option>Pennsylvania</option>
                                                                                            <option>Puerto Rico</option>
                                                                                            <option>Rhode Island</option>
                                                                                            <option>South Carolina</option>
                                                                                            <option>South Dakota</option>
                                                                                            <option>Tennessee</option>
                                                                                            <option>Texas</option>
                                                                                            <option>Utah</option>
                                                                                            <option>Vermont</option>
                                                                                            <option>Virgin Islands</option>
                                                                                            <option>Virginia</option>
                                                                                            <option>Washington</option>
                                                                                            <option>West Virginia</option>
                                                                                            <option>Wisconsin</option>
                                                                                            <option>Wyoming</option>
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
                                                            <option>Alabama</option>
                                                            <option>Alaska</option>
                                                            <option>American Samoa</option>
                                                            <option>Arizona</option>
                                                            <option>Arkansas</option>
                                                            <option>California</option>
                                                            <option>Colorado</option>
                                                            <option>Connecticut</option>
                                                            <option>Delaware</option>
                                                            <option>District Of Columbia</option>
                                                            <option>Federated States Of Micronesia</option>
                                                            <option>Florida</option>
                                                            <option>Georgia</option>
                                                            <option>Guam</option>
                                                            <option>Hawaii</option>
                                                            <option>Idaho</option>
                                                            <option>Illinois</option>
                                                            <option>Indiana</option>
                                                            <option>Iowa</option>
                                                            <option>Kansas</option>
                                                            <option>Kentucky</option>
                                                            <option>Louisiana</option>
                                                            <option>Maine</option>
                                                            <option>Marshall Islands</option>
                                                            <option>Maryland</option>
                                                            <option>Massachusetts</option>
                                                            <option>Michigan</option>
                                                            <option>Minnesota</option>
                                                            <option>Mississippi</option>
                                                            <option>Missouri</option>
                                                            <option>Montana</option>
                                                            <option>Nebraska</option>
                                                            <option>Nevada</option>
                                                            <option>New Hampshire</option>
                                                            <option>New Jersey</option>
                                                            <option>New Mexico</option>
                                                            <option>New York</option>
                                                            <option>North Carolina</option>
                                                            <option>North Dakota</option>
                                                            <option>Northern Mariana Islands</option>
                                                            <option>Ohio</option>
                                                            <option>Oklahoma</option>
                                                            <option>Oregon</option>
                                                            <option>Palau</option>
                                                            <option>Pennsylvania</option>
                                                            <option>Puerto Rico</option>
                                                            <option>Rhode Island</option>
                                                            <option>South Carolina</option>
                                                            <option>South Dakota</option>
                                                            <option>Tennessee</option>
                                                            <option>Texas</option>
                                                            <option>Utah</option>
                                                            <option>Vermont</option>
                                                            <option>Virgin Islands</option>
                                                            <option>Virginia</option>
                                                            <option>Washington</option>
                                                            <option>West Virginia</option>
                                                            <option>Wisconsin</option>
                                                            <option>Wyoming</option>
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
                                                                                    <option>Alabama</option>
                                                                                    <option>Alaska</option>
                                                                                    <option>American Samoa</option>
                                                                                    <option>Arizona</option>
                                                                                    <option>Arkansas</option>
                                                                                    <option>California</option>
                                                                                    <option>Colorado</option>
                                                                                    <option>Connecticut</option>
                                                                                    <option>Delaware</option>
                                                                                    <option>District Of Columbia</option>
                                                                                    <option>Federated States Of Micronesia</option>
                                                                                    <option>Florida</option>
                                                                                    <option>Georgia</option>
                                                                                    <option>Guam</option>
                                                                                    <option>Hawaii</option>
                                                                                    <option>Idaho</option>
                                                                                    <option>Illinois</option>
                                                                                    <option>Indiana</option>
                                                                                    <option>Iowa</option>
                                                                                    <option>Kansas</option>
                                                                                    <option>Kentucky</option>
                                                                                    <option>Louisiana</option>
                                                                                    <option>Maine</option>
                                                                                    <option>Marshall Islands</option>
                                                                                    <option>Maryland</option>
                                                                                    <option>Massachusetts</option>
                                                                                    <option>Michigan</option>
                                                                                    <option>Minnesota</option>
                                                                                    <option>Mississippi</option>
                                                                                    <option>Missouri</option>
                                                                                    <option>Montana</option>
                                                                                    <option>Nebraska</option>
                                                                                    <option>Nevada</option>
                                                                                    <option>New Hampshire</option>
                                                                                    <option>New Jersey</option>
                                                                                    <option>New Mexico</option>
                                                                                    <option>New York</option>
                                                                                    <option>North Carolina</option>
                                                                                    <option>North Dakota</option>
                                                                                    <option>Northern Mariana Islands</option>
                                                                                    <option>Ohio</option>
                                                                                    <option>Oklahoma</option>
                                                                                    <option>Oregon</option>
                                                                                    <option>Palau</option>
                                                                                    <option>Pennsylvania</option>
                                                                                    <option>Puerto Rico</option>
                                                                                    <option>Rhode Island</option>
                                                                                    <option>South Carolina</option>
                                                                                    <option>South Dakota</option>
                                                                                    <option>Tennessee</option>
                                                                                    <option>Texas</option>
                                                                                    <option>Utah</option>
                                                                                    <option>Vermont</option>
                                                                                    <option>Virgin Islands</option>
                                                                                    <option>Virginia</option>
                                                                                    <option>Washington</option>
                                                                                    <option>West Virginia</option>
                                                                                    <option>Wisconsin</option>
                                                                                    <option>Wyoming</option>
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
                                                    <option>Alabama</option>
                                                    <option>Alaska</option>
                                                    <option>American Samoa</option>
                                                    <option>Arizona</option>
                                                    <option>Arkansas</option>
                                                    <option>California</option>
                                                    <option>Colorado</option>
                                                    <option>Connecticut</option>
                                                    <option>Delaware</option>
                                                    <option>District Of Columbia</option>
                                                    <option>Federated States Of Micronesia</option>
                                                    <option>Florida</option>
                                                    <option>Georgia</option>
                                                    <option>Guam</option>
                                                    <option>Hawaii</option>
                                                    <option>Idaho</option>
                                                    <option>Illinois</option>
                                                    <option>Indiana</option>
                                                    <option>Iowa</option>
                                                    <option>Kansas</option>
                                                    <option>Kentucky</option>
                                                    <option>Louisiana</option>
                                                    <option>Maine</option>
                                                    <option>Marshall Islands</option>
                                                    <option>Maryland</option>
                                                    <option>Massachusetts</option>
                                                    <option>Michigan</option>
                                                    <option>Minnesota</option>
                                                    <option>Mississippi</option>
                                                    <option>Missouri</option>
                                                    <option>Montana</option>
                                                    <option>Nebraska</option>
                                                    <option>Nevada</option>
                                                    <option>New Hampshire</option>
                                                    <option>New Jersey</option>
                                                    <option>New Mexico</option>
                                                    <option>New York</option>
                                                    <option>North Carolina</option>
                                                    <option>North Dakota</option>
                                                    <option>Northern Mariana Islands</option>
                                                    <option>Ohio</option>
                                                    <option>Oklahoma</option>
                                                    <option>Oregon</option>
                                                    <option>Palau</option>
                                                    <option>Pennsylvania</option>
                                                    <option>Puerto Rico</option>
                                                    <option>Rhode Island</option>
                                                    <option>South Carolina</option>
                                                    <option>South Dakota</option>
                                                    <option>Tennessee</option>
                                                    <option>Texas</option>
                                                    <option>Utah</option>
                                                    <option>Vermont</option>
                                                    <option>Virgin Islands</option>
                                                    <option>Virginia</option>
                                                    <option>Washington</option>
                                                    <option>West Virginia</option>
                                                    <option>Wisconsin</option>
                                                    <option>Wyoming</option>
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
                                                    <option value="4">Media Mail</option>
                                                    <option value="3">Parcel Select</option>
                                                    <option value="2">Express</option>
                                                    <option selected="" value="1">Priority</option>
                                                    <option value="0">First-Class</option>
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
                                            <button type="button" class="btn btn-success btn-lg btn-block">{LOCALE:CONTINUE}</button>
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
                                                                                            <option>Alabama</option>
                                                                                            <option>Alaska</option>
                                                                                            <option>American Samoa</option>
                                                                                            <option>Arizona</option>
                                                                                            <option>Arkansas</option>
                                                                                            <option>California</option>
                                                                                            <option>Colorado</option>
                                                                                            <option>Connecticut</option>
                                                                                            <option>Delaware</option>
                                                                                            <option>District Of Columbia</option>
                                                                                            <option>Federated States Of Micronesia</option>
                                                                                            <option>Florida</option>
                                                                                            <option>Georgia</option>
                                                                                            <option>Guam</option>
                                                                                            <option>Hawaii</option>
                                                                                            <option>Idaho</option>
                                                                                            <option>Illinois</option>
                                                                                            <option>Indiana</option>
                                                                                            <option>Iowa</option>
                                                                                            <option>Kansas</option>
                                                                                            <option>Kentucky</option>
                                                                                            <option>Louisiana</option>
                                                                                            <option>Maine</option>
                                                                                            <option>Marshall Islands</option>
                                                                                            <option>Maryland</option>
                                                                                            <option>Massachusetts</option>
                                                                                            <option>Michigan</option>
                                                                                            <option>Minnesota</option>
                                                                                            <option>Mississippi</option>
                                                                                            <option>Missouri</option>
                                                                                            <option>Montana</option>
                                                                                            <option>Nebraska</option>
                                                                                            <option>Nevada</option>
                                                                                            <option>New Hampshire</option>
                                                                                            <option>New Jersey</option>
                                                                                            <option>New Mexico</option>
                                                                                            <option>New York</option>
                                                                                            <option>North Carolina</option>
                                                                                            <option>North Dakota</option>
                                                                                            <option>Northern Mariana Islands</option>
                                                                                            <option>Ohio</option>
                                                                                            <option>Oklahoma</option>
                                                                                            <option>Oregon</option>
                                                                                            <option>Palau</option>
                                                                                            <option>Pennsylvania</option>
                                                                                            <option>Puerto Rico</option>
                                                                                            <option>Rhode Island</option>
                                                                                            <option>South Carolina</option>
                                                                                            <option>South Dakota</option>
                                                                                            <option>Tennessee</option>
                                                                                            <option>Texas</option>
                                                                                            <option>Utah</option>
                                                                                            <option>Vermont</option>
                                                                                            <option>Virgin Islands</option>
                                                                                            <option>Virginia</option>
                                                                                            <option>Washington</option>
                                                                                            <option>West Virginia</option>
                                                                                            <option>Wisconsin</option>
                                                                                            <option>Wyoming</option>
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
                                                            <option>Alabama</option>
                                                            <option>Alaska</option>
                                                            <option>American Samoa</option>
                                                            <option>Arizona</option>
                                                            <option>Arkansas</option>
                                                            <option>California</option>
                                                            <option>Colorado</option>
                                                            <option>Connecticut</option>
                                                            <option>Delaware</option>
                                                            <option>District Of Columbia</option>
                                                            <option>Federated States Of Micronesia</option>
                                                            <option>Florida</option>
                                                            <option>Georgia</option>
                                                            <option>Guam</option>
                                                            <option>Hawaii</option>
                                                            <option>Idaho</option>
                                                            <option>Illinois</option>
                                                            <option>Indiana</option>
                                                            <option>Iowa</option>
                                                            <option>Kansas</option>
                                                            <option>Kentucky</option>
                                                            <option>Louisiana</option>
                                                            <option>Maine</option>
                                                            <option>Marshall Islands</option>
                                                            <option>Maryland</option>
                                                            <option>Massachusetts</option>
                                                            <option>Michigan</option>
                                                            <option>Minnesota</option>
                                                            <option>Mississippi</option>
                                                            <option>Missouri</option>
                                                            <option>Montana</option>
                                                            <option>Nebraska</option>
                                                            <option>Nevada</option>
                                                            <option>New Hampshire</option>
                                                            <option>New Jersey</option>
                                                            <option>New Mexico</option>
                                                            <option>New York</option>
                                                            <option>North Carolina</option>
                                                            <option>North Dakota</option>
                                                            <option>Northern Mariana Islands</option>
                                                            <option>Ohio</option>
                                                            <option>Oklahoma</option>
                                                            <option>Oregon</option>
                                                            <option>Palau</option>
                                                            <option>Pennsylvania</option>
                                                            <option>Puerto Rico</option>
                                                            <option>Rhode Island</option>
                                                            <option>South Carolina</option>
                                                            <option>South Dakota</option>
                                                            <option>Tennessee</option>
                                                            <option>Texas</option>
                                                            <option>Utah</option>
                                                            <option>Vermont</option>
                                                            <option>Virgin Islands</option>
                                                            <option>Virginia</option>
                                                            <option>Washington</option>
                                                            <option>West Virginia</option>
                                                            <option>Wisconsin</option>
                                                            <option>Wyoming</option>
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
                                                                                    <option>Alabama</option>
                                                                                    <option>Alaska</option>
                                                                                    <option>American Samoa</option>
                                                                                    <option>Arizona</option>
                                                                                    <option>Arkansas</option>
                                                                                    <option>California</option>
                                                                                    <option>Colorado</option>
                                                                                    <option>Connecticut</option>
                                                                                    <option>Delaware</option>
                                                                                    <option>District Of Columbia</option>
                                                                                    <option>Federated States Of Micronesia</option>
                                                                                    <option>Florida</option>
                                                                                    <option>Georgia</option>
                                                                                    <option>Guam</option>
                                                                                    <option>Hawaii</option>
                                                                                    <option>Idaho</option>
                                                                                    <option>Illinois</option>
                                                                                    <option>Indiana</option>
                                                                                    <option>Iowa</option>
                                                                                    <option>Kansas</option>
                                                                                    <option>Kentucky</option>
                                                                                    <option>Louisiana</option>
                                                                                    <option>Maine</option>
                                                                                    <option>Marshall Islands</option>
                                                                                    <option>Maryland</option>
                                                                                    <option>Massachusetts</option>
                                                                                    <option>Michigan</option>
                                                                                    <option>Minnesota</option>
                                                                                    <option>Mississippi</option>
                                                                                    <option>Missouri</option>
                                                                                    <option>Montana</option>
                                                                                    <option>Nebraska</option>
                                                                                    <option>Nevada</option>
                                                                                    <option>New Hampshire</option>
                                                                                    <option>New Jersey</option>
                                                                                    <option>New Mexico</option>
                                                                                    <option>New York</option>
                                                                                    <option>North Carolina</option>
                                                                                    <option>North Dakota</option>
                                                                                    <option>Northern Mariana Islands</option>
                                                                                    <option>Ohio</option>
                                                                                    <option>Oklahoma</option>
                                                                                    <option>Oregon</option>
                                                                                    <option>Palau</option>
                                                                                    <option>Pennsylvania</option>
                                                                                    <option>Puerto Rico</option>
                                                                                    <option>Rhode Island</option>
                                                                                    <option>South Carolina</option>
                                                                                    <option>South Dakota</option>
                                                                                    <option>Tennessee</option>
                                                                                    <option>Texas</option>
                                                                                    <option>Utah</option>
                                                                                    <option>Vermont</option>
                                                                                    <option>Virgin Islands</option>
                                                                                    <option>Virginia</option>
                                                                                    <option>Washington</option>
                                                                                    <option>West Virginia</option>
                                                                                    <option>Wisconsin</option>
                                                                                    <option>Wyoming</option>
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
                                                <label for="i_recipient_city">{LOCALE:CITY}</label>
                                                <input type="text" name="to[city]" id="i_recipient_city" required placeholder="Example: Tucson" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="i_recipient_state">{LOCALE:STATE}</label>
                                                <select name="to[state]" id="i_recipient_state" required class="form-control">
                                                    <option>Alabama</option>
                                                    <option>Alaska</option>
                                                    <option>American Samoa</option>
                                                    <option>Arizona</option>
                                                    <option>Arkansas</option>
                                                    <option>California</option>
                                                    <option>Colorado</option>
                                                    <option>Connecticut</option>
                                                    <option>Delaware</option>
                                                    <option>District Of Columbia</option>
                                                    <option>Federated States Of Micronesia</option>
                                                    <option>Florida</option>
                                                    <option>Georgia</option>
                                                    <option>Guam</option>
                                                    <option>Hawaii</option>
                                                    <option>Idaho</option>
                                                    <option>Illinois</option>
                                                    <option>Indiana</option>
                                                    <option>Iowa</option>
                                                    <option>Kansas</option>
                                                    <option>Kentucky</option>
                                                    <option>Louisiana</option>
                                                    <option>Maine</option>
                                                    <option>Marshall Islands</option>
                                                    <option>Maryland</option>
                                                    <option>Massachusetts</option>
                                                    <option>Michigan</option>
                                                    <option>Minnesota</option>
                                                    <option>Mississippi</option>
                                                    <option>Missouri</option>
                                                    <option>Montana</option>
                                                    <option>Nebraska</option>
                                                    <option>Nevada</option>
                                                    <option>New Hampshire</option>
                                                    <option>New Jersey</option>
                                                    <option>New Mexico</option>
                                                    <option>New York</option>
                                                    <option>North Carolina</option>
                                                    <option>North Dakota</option>
                                                    <option>Northern Mariana Islands</option>
                                                    <option>Ohio</option>
                                                    <option>Oklahoma</option>
                                                    <option>Oregon</option>
                                                    <option>Palau</option>
                                                    <option>Pennsylvania</option>
                                                    <option>Puerto Rico</option>
                                                    <option>Rhode Island</option>
                                                    <option>South Carolina</option>
                                                    <option>South Dakota</option>
                                                    <option>Tennessee</option>
                                                    <option>Texas</option>
                                                    <option>Utah</option>
                                                    <option>Vermont</option>
                                                    <option>Virgin Islands</option>
                                                    <option>Virginia</option>
                                                    <option>Washington</option>
                                                    <option>West Virginia</option>
                                                    <option>Wisconsin</option>
                                                    <option>Wyoming</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="i_recipient_zip">{LOCALE:ZIP_CODE}</label>
                                                <input type="number" name="to[zip]" id="i_recipient_zip" class="form-control" required placeholder="Example: 12345">
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
                                                    <option value="4">Media Mail</option>
                                                    <option value="3">Parcel Select</option>
                                                    <option value="2">Express</option>
                                                    <option selected="" value="1">Priority</option>
                                                    <option value="0">First-Class</option>
                                                </select>
                                            </div>
                                            <label for="i_recipient_address">{LOCALE:WEIGHT}</label>
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