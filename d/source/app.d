import vibe.d;

shared static this()
{
  auto settings = new HTTPServerSettings;
  settings.port = 3000;

  listenHTTP(settings, &handleRequest);
}

void handleRequest(HTTPServerRequest req,
                   HTTPServerResponse res)
{
  if (req.path == "/")
    res.writeBody("Hello, World!", "text/plain");
}