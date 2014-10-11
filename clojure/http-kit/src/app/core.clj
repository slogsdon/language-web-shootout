(ns app.core
  (:require [compojure.core :refer :all]
            [compojure.route :as route]
            [environ.core :refer [env]]
            [org.httpkit.server :refer [run-server]]
            [ring.middleware.defaults :refer :all]
            [ring.middleware.reload :as reload]
            [ring.util.response :as resp]))

(defroutes app-routes
  (GET "/" [] "Hello, world!")
  (route/not-found "Not Found"))

(def app
  (wrap-defaults app-routes api-defaults))

(defn -main [& args]
  "Main entrypoint for the application."
  (let [port (Integer. (or (env :port) 3000))]
    (println (str "Listening on port " port))
    (run-server app {:port port})))
