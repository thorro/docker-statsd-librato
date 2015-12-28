(function() {
  return {
    librato: {
      email:  process.env.LIBRATO_EMAIL,
      token:  process.env.LIBRATO_TOKEN,
      source: process.env.LIBRATO_SOURCE || "librato-docker"
    }
    , backends: ["statsd-librato-backend"]
    , port: parseInt(process.env.STATSD_PORT) || 8125
  };
})()
