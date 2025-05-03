# Scribe Homebrew Tap

This repository contains [Homebrew](https://brew.sh) formulae for installing Scribe, a lightweight static site generator built in pure Go.

## How to Install

```bash
# Add the tap (only needed once)
brew tap dikaio/tap

# Install Scribe
brew install scribe
```

Or you can install directly without tapping first:

```bash
brew install dikaio/tap/scribe
```

## Available Formulae

### scribe

A lightweight static site generator that transforms Markdown content with YAML front matter into elegant HTML websites. Built entirely with Go's standard library, it delivers exceptional performance without external dependencies.

#### Features

- Markdown to HTML conversion with YAML front matter
- Templating system using Go's html/template
- Live reload development server
- Web management console
- Zero dependencies

## Latest Version

Current version: v0.2.1