{:user 
 {:signing  
  {:plugins  
   [[venantius/ultra "0.5.1"
    [cider/cider-nrepl "0.15.1"]]]
   :repl-options 
   {:nrepl-middleware [cider.nrepl.middleware.spec/wrap-spec]}}}}
