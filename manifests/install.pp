class nginx::install (
  String $ensure       = $::nginx::ensure,
  String $package_name = $::nginx::packagename,
  
) {
  package {'install_nginx':
    ensure => $ensure,
    name   => $package_name,
  }
}
