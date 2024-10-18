# Rack App From Scratch

This is a simple Rack-based Ruby web application built from scratch. It demonstrates the use of `Rack`, routing, and dynamic rendering using ERB templates.

## Features

- Renders dynamic web pages using ERB templates
- Supports basic routing with Rack's request handling
- Static file serving using Rack::Static

## Directory Structure

```bash
.
├── config.ru             # Rack configuration file
├── lib/                  # Contains the core logic of the Greeter class
│   └── greeter.rb        # Greeter class that handles requests
├── public/               # Public assets like CSS files
│   └── styles.css        # Stylesheet for the app
└── views/                # ERB templates for rendering
    ├── index.html.erb    # Main page template
    └── greeting.html.erb # Greeting page template

