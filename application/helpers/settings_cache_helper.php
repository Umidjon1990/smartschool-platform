<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

$GLOBALS['_settings_cache'] = null;

function get_cached_settings($setting_model) {
    if ($GLOBALS['_settings_cache'] === null) {
        $GLOBALS['_settings_cache'] = $setting_model->getSetting();
    }
    return $GLOBALS['_settings_cache'];
}
