# david-cao.github.io

Personal website and blog, built with [Hugo](https://gohugo.io/) and the
[HugoTeX](https://github.com/kaisugi/HugoTeX) theme (LaTeX.css styling,
server-side KaTeX). Deployed to GitHub Pages by the workflow in
`.github/workflows/hugo.yml` on every push to `main` (`make deploy` pushes it).

## Local development

```bash
git clone --recurse-submodules git@github.com:david-cao/david-cao.github.io.git
cd david-cao.github.io
hugo server -D      # -D also renders drafts
```

Requires Hugo extended ≥ 0.158 (`brew install hugo`).

## Writing

```bash
hugo new content post/my-post.md
```

Posts live in `content/post/` and are published at `/posts/<slug>/`.
Math uses `$...$` and `$$...$$`. Text above a `<!--more-->` marker becomes the
post's abstract. Custom shortcodes in `layouts/_shortcodes/`: `{{< theorem >}}`
and `{{< proof >}}`. See the draft
`content/post/theme-demo.md` for examples (`hugo server -D` to view it).

## Credits

- [HugoTeX](https://github.com/kaisugi/HugoTeX) by Kaito Sugimoto (MIT)
- [LaTeX.css](https://latex.vercel.app/) by Vincent Dörig (MIT)
