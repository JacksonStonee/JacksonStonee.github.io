---
title: "Example Post Title"
date: 2026-09-20
categories:
  - Red Team
tags:
  - example
  - jekyll
toc: true
toc_sticky: true
---

## Overview

This is a scaffold post to demonstrate the Minimal Mistakes post format used on
this site. Replace this body with real content. The front matter above enables a
sticky table of contents, wires the post into the **Red Team** category feed, and
tags it for future filtering.

## A Code Block

```python
def scan(target: str) -> list[str]:
    """Enumerate open ports on `target` and return the list as strings."""
    open_ports: list[str] = []
    # ... imagine a real implementation here ...
    return open_ports
```

### A Subheading

Prose after a code block. Any level-2 or level-3 heading here will appear in the
sidebar table of contents on desktop viewports thanks to `toc_sticky: true`.

- Bullet lists render as expected
- Inline `code spans` and [links](https://mmistakes.github.io/minimal-mistakes/) work
- Images: `![alt](/assets/images/example.png)`

To publish a new post, drop a file named `YYYY-MM-DD-slug.md` into `_posts/` with
front matter modeled on this file.
