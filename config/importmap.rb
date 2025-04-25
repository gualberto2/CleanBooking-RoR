# Pin npm packages by running ./bin/importmap

pin "application"
pin "tw-animate-css" # @1.2.7
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "embla-carousel" # @8.6.0
