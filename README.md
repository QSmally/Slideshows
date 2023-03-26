
# Presentation service

Automatically updated Markdown presentations.

Incorporating [Reveal.js](https://github.com/hakimel/reveal.js) to automatically generate a file
index from Markdown slides provided in `Slides/`. Slides are attached like a volume so any changes
are immediately reflected on the server, including the addition of new slide files using the
`autoindex` container.

Supports the [service autoproxy](https://github.com/QSmally/Service-Autoproxy), or standalone usage
with `docker-compose.yml`.

## Usage

Template for the index may be modified at `I-Notify/Template.html`. Server can be run like so:

```bash
$ docker compose up [--build --remove-orphans]
```

## Notes

* Slides are sorted by their name, so a `00-` prefix convention may be necessary;
* Each Markdown file is a major slide with their subslides included. See `reveal.js`;
* Container `autoindex` is necessary to automatically generate a file index on start/update.
