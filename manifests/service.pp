class nginx::service(
  String $ensure       = $nginx::config_ensure,
  String $servicename  = $::nginx::service_name,
  String $pattern      = $::nginx::service_pattern,
  Boolean $enable      = $::nginx::enable,
  Boolean $hasstatus   = $::nginx::service_hasstatus,
  Boolean $has_restart = $::nginx::service_hasrestart,
) {
  service { 'nginx_service':
    ensure     => $ensure,
    name       => $service_name,
    enable     => $enable,
    hasstatus  => $hasstatus,
    hasrestart => $hasrestart,
    pattern    => $pattern,
  }
}
