// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'salary_deductions.js';

import { Turbo } from "@hotwired/turbo-rails"
import { encodeMethodIntoRequestBody } from "./turbo_methods"


import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "../stylesheets/application";


import $ from 'jquery';
window.$ = $;

$(document).on('turbolinks:load', function() {
  $(".jobs_search input").keyup(function() {
    $.get($(".jobs_search").attr("action"), $(".jobs_search").serialize(), null, "script");
    return false;
  });
});


Rails.start()
ActiveStorage.start()

document.addEventListener("turbo:before-fetch-request", encodeMethodIntoRequestBody)


console.log("Hello from Webpacker!");



Rails.start();
Turbolinks.start();
ActiveStorage.start();

//= require jquery
//= require bootstrap-sprockets
//= require rails-ujs
//= require turbolinks
//= require salary_deductions

//= require_tree .
