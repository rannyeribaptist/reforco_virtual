# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w(
                                                 backoffice.css.scss
                                                 bootstrap-reset.css
                                                 bucket-ico-fonts.css
                                                 turquoise-theme.css
                                                 jquery.steps.css
                                                 style.css
                                                 style-responsive.css
                                                 css3clock/css/style.css
                                                )

Rails.application.config.assets.precompile += %w(
                                                 scripts.js
                                                 jquery.scrollTo.min.js
                                                 jquery.nicescroll.js
                                                 jquery.flot.canvas.min.js
                                                 jquery.dcjqaccordion.2.7.js
                                                 sparkline/jquery.sparkline.js
                                                 jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js
                                                 easypiechart/jquery.easypiechart.min.js
                                                 draggable-portlet.js
                                                 jquery-ui/jquery-ui-1.10.1.custom.min.js
                                                 bootstrap-switch.js
                                                 editable/bootstrap-editable.js
                                                 editable/rails.js
                                                 backoffice/chartkick.js
                                                 Chart.bundle.js
                                                 calendar/moment-2.2.1.js
                                                 calendar/clndr.min.js
                                                 backoffice/dashboard_calendar.js
                                                 underscore-min.js
                                                 gauge/gauge.js
                                                 dashboard.js
                                                 flot-chart/jquery.flot.js
                                                 flot-chart/jquery.flot.tooltip.min.js
                                                 flot-chart/jquery.flot.resize.js
                                                 flot-chart/jquery.flot.pie.resize.js
                                                 flot-chart/jquery.flot.animator.min.js
                                                 flot-chart/jquery.flot.growraf.js
                                                 css3clock/js/css3clock.js
                                                )

Rails.application.config.assets.precompile += %w(
                                                 logo.png
                                                 cat_bg.jpg
                                                )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
