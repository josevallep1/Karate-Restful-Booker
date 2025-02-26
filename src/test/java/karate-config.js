function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    url_base: 'https://restful-booker.herokuapp.com/',
  }
  if (env == 'dev') {
    config.url_base = 'https://restful-booker.herokuapp.com/'
  } else if (env == 'qa') {
    config.url_base = 'https://qa-serverest.dev'
  }
  return config;
}