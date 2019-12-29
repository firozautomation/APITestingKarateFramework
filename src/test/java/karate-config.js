function() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  
  var config = {
    env: env,
	url: 'https://jsonplaceholder.typicode.com/'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
	  url: 'https://jsonplaceholder.typicode.com/'  
  } else if (env == 'pre-prod') {
    // customize
	  
  } else if (env == 'prod') {
	  
	  url: 'https://jsonplaceholder.typicode.com/'
		// customize  
  }
  return config;
}