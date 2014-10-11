(defproject app "0.1.0-SNAPSHOT"
  :min-lein-version "2.0.0"
  :dependencies [[org.clojure/clojure "1.6.0"]
                 [compojure "1.1.9"]
                 [http-kit "2.1.16"]
                 [environ "0.5.0"]
                 [ring/ring-core "1.3.1"]
                 [ring/ring-defaults "0.1.2"]]
  :plugins [[lein-ring "0.8.12"]
            [environ/environ.lein "0.2.1"]]
  :hooks [environ.leiningen.hooks]
  :profiles {:dev {:dependencies [[ring-mock "0.1.5"]
                                  [ring/ring-devel "1.3.1"]]}
             :production {:env {:production true}}}
  :main app.core
  :uberjar-name "app.jar")
