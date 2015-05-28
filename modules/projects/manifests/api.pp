class projects::api {

  php::project { 'api':
    source        	=> 'moltin/api',
    server_name 	=> 'api.local.molt.in',
    postgres      	=> true,
    nginx         	=> 'templates/shared/nginx.conf.erb',
    redis         	=> true,
    php           	=> '5.5.x',
  }
}