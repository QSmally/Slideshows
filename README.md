
# Presentation service

Automatically updated Markdown presentations.

Incorporating [Reveal.js](https://github.com/hakimel/reveal.js) to automatically generate a file
index from Markdown slides provided in `Slides/`. Slides are attached like a volume so any changes
are immediately reflected on the server.

Supports the [service autoproxy](https://github.com/QSmally/Service-Autoproxy).

## Notes

* Slides are sorted by their name, so a `00-` prefix convention may be necessary;
* Each Markdown file is a major slide with their subslides included. See `reveal.js`;
* It does *not* support addition of major slides (as that requires a regeneration of the index).
