#!/bin/bash
set -e

echo "🚀 Setting up blog authoring environment..."

# ─────────────────────────────────────────────────────────────
# Fix permissions on mounted credential directories
# ─────────────────────────────────────────────────────────────
echo "🔐 Configuring credential mounts..."

# SSH requires strict permissions
if [ -d "$HOME/.ssh" ]; then
  chmod 700 "$HOME/.ssh" 2>/dev/null || true
  chmod 600 "$HOME/.ssh"/* 2>/dev/null || true
  chmod 644 "$HOME/.ssh"/*.pub 2>/dev/null || true
fi

# GPG also needs proper permissions
if [ -d "$HOME/.gnupg" ]; then
  chmod 700 "$HOME/.gnupg" 2>/dev/null || true
fi

# ─────────────────────────────────────────────────────────────
# Claude Code - AI-powered coding assistant
# ─────────────────────────────────────────────────────────────
echo "📦 Installing Claude Code..."
npm install -g @anthropic-ai/claude-code

# ─────────────────────────────────────────────────────────────
# Jekyll (GitHub Pages native static site generator)
# ─────────────────────────────────────────────────────────────
echo "💎 Installing Jekyll and GitHub Pages gems..."

# Install bundler first (jekyll will come from github-pages via bundle install)
gem install bundler

# ─────────────────────────────────────────────────────────────
# Markdown authoring tools
# ─────────────────────────────────────────────────────────────
echo "✍️  Installing markdown tools..."
npm install -g \
  markdownlint-cli2 \
  prettier \
  markdown-link-check \
  @mermaid-js/mermaid-cli

# ─────────────────────────────────────────────────────────────
# Image optimization tools
# ─────────────────────────────────────────────────────────────
echo "🖼️  Installing image tools..."
sudo apt-get update && sudo apt-get install -y \
  imagemagick \
  webp \
  optipng \
  cmake

# ─────────────────────────────────────────────────────────────
# Initialize Jekyll if no Gemfile exists
# ─────────────────────────────────────────────────────────────
if [ ! -f "Gemfile" ]; then
  echo "📝 No Gemfile found. Run 'jekyll new . --force' to initialize Jekyll."
fi

# Install Ruby dependencies if Gemfile exists
if [ -f "Gemfile" ]; then
  echo "📦 Installing Ruby dependencies..."
  # Use single-threaded make to avoid race conditions in native extension builds
  MAKE="make -j1" bundle install
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "📚 Quick reference:"
echo "   claude          - Start Claude Code AI assistant"
echo "   bundle exec jekyll serve --livereload  - Start local preview"
echo "   markdownlint-cli2 '**/*.md'            - Lint markdown files"
echo "   markdown-link-check README.md          - Check for broken links"
echo ""
