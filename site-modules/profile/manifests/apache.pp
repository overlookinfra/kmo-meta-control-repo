# site-modules/profile/manifests/apache.pp
class profile::apache (
    $port,
)
{
    $docroot = '/var/www'
    $index_html = "${docroot}/index.html"
    $site_content = 'Hello world!'
    include apache
    apache::vhost { 'vhost.example.com':
      port    => $port,
      docroot => $docroot,
  }
}
