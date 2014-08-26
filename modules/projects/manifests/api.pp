class projects::api {
	
	boxen::project { 'api',
		server_name => 'dev.api.molt.in',
		source 		=> 'moltin/api',
		nginx		=> true,
		redis		=> true,
		postgres	=> true
	}
}