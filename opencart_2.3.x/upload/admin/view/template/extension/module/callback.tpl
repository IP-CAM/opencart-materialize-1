<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-callback" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>&nbsp;
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
			</div>
			<h1><?php echo $callback_title; ?></h1>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	<div class="container-fluid">
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>
		<div class="alert alert-info"><i class="fa fa-exclamation-circle"></i>&nbsp;<?php echo $text_materialize; ?></div>
		<div class="panel panel-default">
			<div class="panel-heading"><h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3></div>
			<div class="panel-body">
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-callback" class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?>:</label>
						<div class="col-sm-10">
							<select name="module_callback_status" id="input-status" class="form-control">
								<?php if ($module_callback_status) { ?>
								<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
								<option value="0"><?php echo $text_disabled; ?></option>
								<?php } else { ?>
								<option value="1"><?php echo $text_enabled; ?></option>
								<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
								<?php } ?>
							</select>
						</div>
					</div>
					<br>
					<fieldset>
						<legend><?php echo $text_popup; ?></legend>
						<div class="form-group">
							<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $help_modaltitle; ?>"><?php echo $entry_title; ?>:</span></label>
							<div class="col-sm-10">
								<?php foreach ($languages as $language) { ?>
								<div class="input-group">
									<span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>"/></span>
									<input type="text" name="module_callback[<?php echo $language['language_id']; ?>][title]" value="<?php echo isset($module_callback[$language['language_id']]) ? $module_callback[$language['language_id']]['title'] : ''; ?>" placeholder="<?php echo $help_modaltitle; ?>" class="form-control" />
								</div>
								<?php } ?>
							</div>
						</div>
						<div class="form-group required">
							<label class="col-sm-2 control-label"><?php echo $entry_success; ?>:</label>
							<div class="col-sm-10">
								<?php foreach ($languages as $language) { ?>
								<div class="input-group">
									<span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>"/></span>
									<input type="text" name="module_callback[<?php echo $language['language_id']; ?>][success]" value="<?php echo isset($module_callback[$language['language_id']]) ? $module_callback[$language['language_id']]['success'] : ''; ?>" placeholder="<?php echo $entry_success; ?>" class="form-control" />
								</div>
								<?php if (isset($error_success[$language['language_id']])) { ?><div class="text-danger"><?php echo $error_success[$language['language_id']]; ?></div><?php } ?>
								<?php } ?>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"><?php echo $entry_fields; ?>:</label>
							<div class="col-sm-10">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<td class="text-left" style="width: 70%;"><?php echo $entry_fields; ?></td>
											<td class="text-center" style="width: 15%;"><?php echo $entry_status; ?></td>
											<td class="text-center" style="width: 15%;"><?php echo $entry_required; ?></td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="text-left"><?php echo $text_name; ?></td>
											<td class="text-center">
												<div class="checkbox">
													<label>
														<?php if ($module_callback_name) { ?>
														<input type="checkbox" name="module_callback_name" id="callback-name" class="callback-checkbox" value="1" checked="checked" />
														<?php } else { ?>
														<input type="checkbox" name="module_callback_name" id="callback-name" class="callback-checkbox" value="1" />
														<?php } ?>
													</label>
												</div>
											</td>
											<td class="text-center">
												<div class="checkbox">
													<label>
														<?php if ($module_callback_name_required) { ?>
														<input type="checkbox" name="module_callback_name_required" id="callback-name-required" class="callback-checkbox" value="1" checked="checked" />
														<?php } else { ?>
														<input type="checkbox" name="module_callback_name_required" id="callback-name-required" class="callback-checkbox" value="1" />
														<?php } ?>
													</label>
												</div>
											</td>
										</tr>
										<tr>
											<td class="text-left"><?php echo $text_enquiry; ?></td>
											<td class="text-center">
												<div class="checkbox">
													<label>
														<?php if ($module_callback_enquiry) { ?>
														<input type="checkbox" name="module_callback_enquiry" id="callback-enquiry" class="callback-checkbox" value="1" checked="checked" />
														<?php } else { ?>
														<input type="checkbox" name="module_callback_enquiry" id="callback-enquiry" class="callback-checkbox" value="1" />
														<?php } ?>
													</label>
												</div>
											</td>
											<td class="text-center">
												<div class="checkbox">
													<label>
														<?php if ($module_callback_enquiry_required) { ?>
														<input type="checkbox" name="module_callback_enquiry_required" id="callback-enquiry-required" class="callback-checkbox" value="1" checked="checked" />
														<?php } else { ?>
														<input type="checkbox" name="module_callback_enquiry_required" id="callback-enquiry-required" class="callback-checkbox" value="1" />
														<?php } ?>
													</label>
												</div>
											</td>
										</tr>
										<tr>
											<td class="text-left"><?php echo $text_call_time; ?></td>
											<td class="text-center">
												<div class="checkbox">
													<label>
														<?php if ($module_callback_calltime) { ?>
														<input type="checkbox" name="module_callback_calltime" id="callback-calltime" class="callback-checkbox" value="1" checked="checked" />
														<?php } else { ?>
														<input type="checkbox" name="module_callback_calltime" id="callback-calltime" class="callback-checkbox" value="1" />
														<?php } ?>
													</label>
												</div>
											</td>
											<td class="text-center">
												<div class="checkbox">
													<label>
														<?php if ($module_callback_calltime_required) { ?>
														<input type="checkbox" name="module_callback_calltime_required" id="callback-calltime-required" class="callback-checkbox" value="1" checked="checked" />
														<?php } else { ?>
														<input type="checkbox" name="module_callback_calltime_required" id="callback-calltime-required" class="callback-checkbox" value="1" />
														<?php } ?>
													</label>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</fieldset>
					<br>
					<fieldset>
						<legend><?php echo $text_call_action; ?></legend>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="callaction-status"><?php echo $entry_status; ?>:</label>
							<div class="col-sm-10">
								<select name="module_callback_callaction_status" id="callaction-status" class="form-control">
									<?php if ($module_callback_callaction_status) { ?>
									<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
									<option value="0"><?php echo $text_disabled; ?></option>
									<?php } else { ?>
									<option value="1"><?php echo $text_enabled; ?></option>
									<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group callback-settings">
							<label class="col-sm-2 control-label"><?php echo $entry_title; ?>:</label>
							<div class="col-sm-10">
								<?php foreach ($languages as $language) { ?>
								<div class="input-group">
									<span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>"/></span>
									<input type="text" name="module_callback[<?php echo $language['language_id']; ?>][caption]" value="<?php echo isset($module_callback[$language['language_id']]) ? $module_callback[$language['language_id']]['caption'] : ''; ?>" placeholder="<?php echo $entry_title; ?>" class="form-control" />
								</div>
								<?php } ?>
							</div>
						</div>
						<div class="form-group callback-settings">
							<label class="col-sm-2 control-label"><?php echo $entry_description; ?>:</label>
							<div class="col-sm-10">
								<?php foreach ($languages as $language) { ?>
								<div class="input-group">
									<span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>"/></span>
									<textarea name="module_callback[<?php echo $language['language_id']; ?>][description]" rows="5" placeholder="<?php echo $entry_description; ?>" class="form-control" style="min-height:100px;resize:vertical;"><?php echo isset($module_callback[$language['language_id']]) ? $module_callback[$language['language_id']]['description'] : ''; ?></textarea>
								</div>
								<?php } ?>
							</div>
						</div>
						<div class="form-group required callback-settings">
							<label class="col-sm-2 control-label" for="module_callback_time"><span data-toggle="tooltip" title="<?php echo $help_time; ?>"><?php echo $entry_time; ?>:</span></label>
							<div class="col-sm-10">
								<input type="number" min="1" name="module_callback_time" placeholder="<?php echo $entry_time; ?>" id="module_callback_time" value="<?php echo $module_callback_time; ?>" class="form-control" />
								<?php if ($error_module_callback_time) { ?>
								<div class="text-danger"><?php echo $error_time; ?></div>
								<?php } ?>
							</div>
						</div>
					</fieldset>
					<br>
					<fieldset>
						<legend><?php echo $text_settings; ?></legend>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-phonemask-status"><?php echo $entry_phonemask; ?></label>
							<div class="col-sm-10">
								<select name="module_callback_phonemask_status" id="input-phonemask-status" class="form-control">
									<?php if ($module_callback_phonemask_status) { ?>
									<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
									<option value="0"><?php echo $text_disabled; ?></option>
									<?php } else { ?>
									<option value="1"><?php echo $text_enabled; ?></option>
									<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
			<div class="panel-footer text-center">
				<a href="//www.opencart.com/index.php?route=marketplace/extension/info&extension_id=30715" target="_blank" rel="noopener"><strong>Materialize Template</strong></a>&nbsp;|&nbsp;
				<i class="fa fa-github"></i>&nbsp;
				<a href="//github.com/trydalcoholic/opencart-materialize" target="_blank" rel="noopener">GitHub</a>&nbsp;|&nbsp;
				<i class="fa fa-twitter"></i>&nbsp;
				<a href="//twitter.com/trydalcoholic" target="_blank" rel="noopener">Twitter</a>&nbsp;|&nbsp;
				<i class="fa fa-paypal"></i>&nbsp;
				<a href="//www.paypal.me/trydalcoholic" target="_blank" rel="noopener">PayPal</a>&nbsp;|&nbsp;
				<i class="fa fa-credit-card"></i>&nbsp;
				<a href="//money.yandex.ru/to/41001413377821" target="_blank" rel="noopener">Yandex.Money</a>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$('#language a:first').tab('show');

	var inputStatus = $("#callaction-status"),
		checkboxName = $("#callback-name"),
		checkboxEnquiry = $("#callback-enquiry"),
		checkboxCalltime = $("#callback-calltime"),
		checkboxNameRequired = $("#callback-name-required"),
		checkboxEnquiryRequired = $("#callback-enquiry-required"),
		checkboxCalltimeRequired = $("#callback-calltime-required"),
		callbackCheckbox = $(".callback-checkbox");

	if (checkboxName.prop("checked")) {
		checkboxNameRequired.attr("disabled", false);
	} else {
		checkboxNameRequired.attr("disabled", true);
		checkboxNameRequired.removeAttr("checked");
		checkboxNameRequired.parent().parent().addClass("disabled");
	}
	if (checkboxEnquiry.prop("checked")) {
		checkboxEnquiryRequired.attr("disabled", false);
	} else {
		checkboxEnquiryRequired.attr("disabled", true);
		checkboxEnquiryRequired.removeAttr("checked");
		checkboxEnquiryRequired.parent().parent().addClass("disabled");
	}
	if (checkboxCalltime.prop("checked")) {
		checkboxCalltimeRequired.attr("disabled", false);
	} else {
		checkboxCalltimeRequired.attr("disabled", true);
		checkboxCalltimeRequired.removeAttr("checked");
		checkboxCalltimeRequired.parent().parent().addClass("disabled");
	}

	callbackCheckbox.on("click", function() {
		if (checkboxName.prop("checked")) {
			checkboxNameRequired.attr("disabled", false);
			checkboxNameRequired.parent().parent().removeClass("disabled");
		} else {
			checkboxNameRequired.attr("disabled", true);
			checkboxNameRequired.removeAttr("checked");
			checkboxNameRequired.parent().parent().addClass("disabled");
		}
		if (checkboxEnquiry.prop("checked")) {
			checkboxEnquiryRequired.attr("disabled", false);
			checkboxEnquiryRequired.parent().parent().removeClass("disabled");
		} else {
			checkboxEnquiryRequired.attr("disabled", true);
			checkboxEnquiryRequired.removeAttr("checked");
			checkboxEnquiryRequired.parent().parent().addClass("disabled");
		}
		if (checkboxCalltime.prop("checked")) {
			checkboxCalltimeRequired.attr("disabled", false);
			checkboxCalltimeRequired.parent().parent().removeClass("disabled");
		} else {
			checkboxCalltimeRequired.attr("disabled", true);
			checkboxCalltimeRequired.removeAttr("checked");
			checkboxCalltimeRequired.parent().parent().addClass("disabled");
		}
	});

	if (inputStatus.val() == 0) {$('.callback-settings').hide();}

	inputStatus.change(function(){
		if (inputStatus.val() == 0) {$('.callback-settings').hide();}
		if (inputStatus.val() == 1) {$('.callback-settings').show();}
	});
</script>
<?php echo $footer; ?> 