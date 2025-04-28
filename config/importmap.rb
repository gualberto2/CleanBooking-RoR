# Pin npm packages by running ./bin/importmap

pin "application"
pin "tw-animate-css" # @1.2.7
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "embla-carousel" # @8.6.0
pin "@floating-ui/dom", to: "@floating-ui--dom.js" # @1.6.13
pin "@floating-ui/core", to: "@floating-ui--core.js" # @1.6.9
pin "@floating-ui/utils", to: "@floating-ui--utils.js" # @0.2.9
pin "@floating-ui/utils/dom", to: "@floating-ui--utils--dom.js" # @0.2.9
pin "mustache" # @4.2.0
pin "fuse.js" # @7.1.0
pin "tippy.js", to: "https://cdn.jsdelivr.net/npm/tippy.js@6.3.7/+esm"
pin "@popperjs/core", to: "https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/+esm"
