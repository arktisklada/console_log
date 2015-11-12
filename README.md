# ConsoleLog

Log rails variables to the browser console.

## Installation

Include `console_log` in your `Gemfile`, probably in your development group:

``` ruby
group :development do
  gem "console_log"
end
```

## Usage

From anywhere in a controller, ActiveRecord::Base model, or view, the syntax is:

``` ruby
console_log message, ...
```

The `console_log` method accepts one or many arguments, appending each one to the console queue.

When the page renders, the queued messages/variables/objects will be logged to the browser console