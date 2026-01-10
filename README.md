# stephs.github.io

Old Fashioned Blogs

---

<details>
<summary><strong>Development Setup</strong></summary>

## Getting Started

1. Open this repo in VS Code with the Dev Containers extension installed
2. Click "Reopen in Container" when prompted
3. Start writing!

## Using Claude Code

```bash
# Start Claude Code
claude

# Ask it to help with your blog
# "Help me write an introduction for my post about X"
# "Review this markdown for clarity and grammar"
```

## Writing Workflow

### Create a New Post

```bash
cp _drafts/YYYY-MM-DD-post-template.md _drafts/$(date +%Y-%m-%d)-my-new-post.md
```

### Preview Locally

```bash
bundle exec jekyll serve --livereload --drafts
# Open http://localhost:4000
```

### Publish

```bash
mv _drafts/2024-01-15-my-post.md _posts/
git add _posts/2024-01-15-my-post.md
git commit -m "Publish: My Post Title"
git push
```

## Available Tools

| Tool | Command | Purpose |
|------|---------|---------|
| Claude Code | `claude` | AI writing assistant |
| Jekyll | `bundle exec jekyll serve` | Local preview |
| Markdownlint | `markdownlint-cli2 '**/*.md'` | Lint markdown |
| Link checker | `markdown-link-check file.md` | Find broken links |

## Troubleshooting

**Container won't start?**
```bash
# In VS Code: Ctrl+Shift+P → "Dev Containers: Rebuild Container"
```

**Jekyll errors?**
```bash
bundle update
bundle exec jekyll build --verbose
```

</details>
