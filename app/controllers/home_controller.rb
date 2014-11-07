class HomeController < ApplicationController
  def index
    ENV['FAKE_REQUESTS_NUMBER'].to_i.times do
      puts <<-FAKE_REQUEST_LOG
2014-11-06T23:58:05.335484+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82] Processing by PropertyController#index as HT
ML
2014-11-06T23:58:05.335493+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Parameters: {"id"=>"1080376-villa-for-sale-sedella"}
2014-11-06T23:58:05.466980+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered property/_slideshow.html.haml (24.5ms)
2014-11-06T23:58:05.474881+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered property/_features.html.haml (0.6ms)
2014-11-06T23:58:05.481254+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered shared/box/_rounded.html.erb (0.1ms)
2014-11-06T23:58:05.491242+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered shared/_meta.html.haml (0.3ms)
2014-11-06T23:58:05.503547+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered shared/_account_navigation.html.haml (1.2ms)
2014-11-06T23:58:05.566152+00:00 app[web.17]: [db85052f-611e-4890-8928-020c2286049a]   Rendered shared/box/_rounded.html.erb (0.1ms)
2014-11-06T23:58:05.503681+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered shared/_header.html.haml (9.3ms)
2014-11-06T23:58:05.511682+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered shared/box/_rounded.html.erb (0.1ms)
2014-11-06T23:58:05.511771+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered shared/_about_location.html.haml (5.9ms)
2014-11-06T23:58:05.511872+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered property/_searchbar.html.haml (6.2ms)
2014-11-06T23:58:05.513626+00:00 app[web.3]: [c7d36de0-6dcd-4cc5-9aea-dddeb6015f82]   Rendered shared/_bottom_site_links.html.haml (1.4ms)
2014-11-06T23:58:05.516882+00:00 app[web.3]: source=rack-timeout id=c7d36de0-6dcd-4cc5-9aea-dddeb6015f82 wait=2ms timeout=20000ms service=189ms state=completed
      FAKE_REQUEST_LOG
    end
    a_string = "a" * 10.megabyte
    b_string = "b" * 10.megabyte
    if a_string == b_string.gsub(/b/, "a")
      @var = a_string + b_string
    end
  end
end
