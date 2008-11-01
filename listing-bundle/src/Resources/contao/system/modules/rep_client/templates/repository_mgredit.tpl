<?php
/**
 * TYPOlight Repository :: Template to add a new extension
 *
 * NOTE: this file was edited with tabs set to 4.
 * @package Repository
 * @copyright Copyright (C) 2008 by Peter Koch, IBK Software AG
 * @license See accompaning file LICENSE.txt
 */
?>
<?php 
	$rep = &$this->rep;
	$theme = &$rep->theme;
	$text = &$GLOBALS['TL_LANG']['tl_repository'];
	$tabindex = 1;
?>

<div id="tl_buttons">
<a href="<?php echo $rep->homeLink; ?>" class="header_back" title="<?php echo $text['goback']; ?>" accesskey="b" onclick="Backend.getScrollOffset();"><?php echo $text['goback']; ?></a>
</div>

<h2 class="sub_headline"><?php echo $text['editextension']; ?></h2>

<div class="mod_repository block">
<form action="<?php echo $rep->f_link; ?>" id="repository_editform" method="post" >
<div class="tl_formbody_edit">
<input type="hidden" name="repository_action" value="<?php echo $rep->f_action; ?>" />

<div class="tl_tbox">

<!-- license key -->
<h3><label for="repository_lickey"><?php echo $text['lickey'][0]; ?></label></h3>
<input type="text" tabindex="<?php echo $tabindex++; ?>" maxlength="255" name="repository_lickey" id="repository_lickey" value="<?php echo $rep->f_lickey; ?>" class="tl_text" />
<p class="tl_help"><?php echo $text['lickey'][1]; ?></p>

<!-- update states -->
<h3><label><?php echo $text['status']; ?></label></h3>
<div class="tl_checkbox_container">
  <input type="checkbox" name="repository_alpha" id="repository_alpha" tabindex="<?php echo $tabindex++; ?>" class="tl_checkbox" value="1"<?php if ($rep->f_alpha) echo ' checked="checked"'; ?> /> <label for="repository_alpha"><?php echo $text['state_options']['alpha']; ?></label><br />
  <input type="checkbox" name="repository_beta" id="repository_beta" tabindex="<?php echo $tabindex++; ?>" class="tl_checkbox" value="1"<?php if ($rep->f_beta) echo ' checked="checked"'; ?> /> <label for="repository_beta"><?php echo $text['state_options']['beta']; ?></label><br />
  <input type="checkbox" name="repository_rc" id="repository_rc" tabindex="<?php echo $tabindex++; ?>" class="tl_checkbox" value="1"<?php if ($rep->f_rc) echo ' checked="checked"'; ?> /> <label for="repository_rc"><?php echo $text['state_options']['rc']; ?></label><br />
  <input type="checkbox" name="repository_stable" id="repository_stable" tabindex="<?php echo $tabindex++; ?>" class="tl_checkbox" value="1"<?php if ($rep->f_stable) echo ' checked="checked"'; ?> /> <label for="repository_stable"><?php echo $text['state_options']['stable']; ?></label>
</div>
<p class="tl_help"><?php echo $text['updatehint']; ?></p>

<div class="tl_checkbox_single_container">
  <input type="checkbox" name="repository_delprot" id="repository_delprot" tabindex="<?php echo $tabindex++; ?>" class="tl_checkbox" value="1"<?php if ($rep->f_delprot) echo ' checked="checked"'; ?> /> <label for="repository_delprot"><?php echo $text['uninstprotect'][0]; ?></label>
</div>
<p class="tl_help"><?php echo $text['uninstprotect'][1]; ?></p>

</div>
</div>

<div class="mod_repository_submit tl_formbody_submit">

<div class="tl_submit_container">
<input type="submit" name="repository_submitbutton" class="tl_submit" value="<?php echo $text['save']; ?>" />
<input type="submit" name="repository_cancelbutton" class="tl_submit" value="<?php echo $text['cancel']; ?>" />
</div>

</div>

</form>
</div>
