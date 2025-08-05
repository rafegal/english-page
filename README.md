# 🇺🇸 🇬🇧 🇿🇦 English Practice Platform

## 📖 About the Project

This is a **didactic project** with a dual purpose:

1. **📚 English Practice** - Platform with grammar content and interactive exercises
2. **🛠️ Technical Learning** - Practical example of how to use MkDocs + GitHub Pages

The site demonstrates how to create rich and interactive documentation using only Markdown and some MkDocs Material extensions.

## 🌐 Live Site

Access: **[https://rafegal.github.io/english-page](https://rafegal.github.io/english-page)**

## 🚀 How to Run Locally

```bash
# Clone the repository
git clone https://github.com/rafegal/english-page.git
cd english-page

# Install dependencies
pip install -r requirements.txt

# Run local server
mkdocs serve
# or with uv: uv run mkdocs serve

# Access: http://localhost:8000
```

## 📚 Learning Resources

### MkDocs Material
- **Official Documentation**: [mkdocs-material.readthedocs.io](https://squidfunk.github.io/mkdocs-material/)
- **Markdown Extensions**: [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/)

### GitHub Pages
- **Official Guide**: [docs.github.com/pages](https://docs.github.com/en/pages)

## 🎯 Main Markdown + Extensions Markup

### 1. Basic Markdown

```markdown
# H1 Title
## H2 Title
### H3 Title

**Bold text**
*Italic text*
~~Strikethrough text~~

- Unordered list
- Item 2
  - Subitem

1. Ordered list
2. Item 2

[Link](https://example.com)

![Image](path/image.png)
```

### 2. Code Blocks

````markdown
```python
def hello():
    print("Hello World!")
```

`inline code`
````

### 3. Admonitions (Highlighted Boxes)

```markdown
!!! note "Note"
    Note content

!!! tip "Tip"
    Tip content

!!! warning "Warning"
    Warning content

!!! danger "Danger"
    Danger content

!!! info "Information"
    Information content

!!! success "Success"
    Success content

!!! question "Question"
    Question content
```

### 4. Tabs

```markdown
=== "Tab 1"
    First tab content

=== "Tab 2"
    Second tab content

=== "Tab 3"
    Third tab content
```

### 5. Collapsible Details

```markdown
??? note "Click to expand"
    Hidden content that appears when clicked

??? success "Answer"
    This section appears closed initially
```

### 6. Tables

```markdown
| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Data 1   | Data 2   | Data 3   |
| Data 4   | Data 5   | Data 6   |
```

### 7. Emojis

```markdown
:smile: :heart: :thumbsup: :rocket: :books:
```

Or directly: 😀 ❤️ 👍 🚀 📚

### 8. Text Formatting

```markdown
==Highlighted text==
^^Superscript text^^
~~Subscript text~~
++Inserted text++
--Deleted text--
```

### 9. Definition Lists

```markdown
Term 1
:   Definition of term 1

Term 2
:   Definition of term 2
    Can have multiple lines
```

### 10. Block Quotes

```markdown
> This is a quote
> Can have multiple lines
> 
> > Nested quote
```

## ⚙️ MkDocs Configuration

### mkdocs.yml - Main File

```yaml
site_name: Site Name

nav:
  - Home: index.md
  - Section 1:
    - Page 1: section1/page1.md
    - Page 2: section1/page2.md

theme:
  name: material
  palette:
    - media: "(prefers-color-scheme: light)"
      scheme: default
      primary: blue
      accent: orange
    - media: "(prefers-color-scheme: dark)"
      scheme: slate
      primary: blue
      accent: orange

markdown_extensions:
  - admonition
  - pymdownx.details
  - pymdownx.superfences
  - pymdownx.highlight
  - pymdownx.inlinehilite
  - pymdownx.snippets
```

### Available Colors (theme.palette)

**Primary**: `red`, `pink`, `purple`, `deep purple`, `indigo`, `blue`, `light blue`, `cyan`, `teal`, `green`, `light green`, `lime`, `yellow`, `amber`, `orange`, `deep orange`, `brown`, `grey`, `blue grey`, `black`, `white`

**Accent**: `red`, `pink`, `purple`, `deep purple`, `indigo`, `blue`, `light blue`, `cyan`, `teal`, `green`, `light green`, `lime`, `yellow`, `amber`, `orange`, `deep orange`

## 🔄 Automatic GitHub Pages Deploy

The `.github/workflows/ci.yml` file configures automatic deployment:

```yaml
name: ci 
on:
  push:
    branches:
      - main
permissions:
  contents: write
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v4
        with:
          python-version: 3.x
      - run: pip install -r requirements.txt 
      - run: mkdocs gh-deploy --force
```

### How to Enable GitHub Pages

1. **Repository → Settings → Pages**
2. **Source**: Deploy from a branch  
3. **Branch**: `gh-pages`
4. **Folder**: `/ (root)`
5. **Save**

## 📁 Project Structure

```
english-page/
├── docs/                    # Site content
│   ├── index.md            # Home page
│   ├── grammar/            # Grammar lessons
│   └── exercises/          # Practice exercises
├── .github/
│   └── workflows/
│       └── ci.yml          # Automatic deploy
├── mkdocs.yml              # Main configuration
├── requirements.txt        # Python dependencies
└── README.md              # This file
```

## 🎨 Advanced Customizations

### Custom CSS

Create `docs/stylesheets/extra.css`:

```css
.md-header {
    background-color: #your-color !important;
}
```

And add to `mkdocs.yml`:

```yaml
extra_css:
  - stylesheets/extra.css
```

### Icons and Logo

```yaml
theme:
  icon:
    logo: material/school
  favicon: images/favicon.png
```

## 🤝 How to Contribute

1. Fork the project
2. Create your feature branch: `git checkout -b feature/new-lesson`
3. Commit your changes: `git commit -m 'Add new lesson'`
4. Push to the branch: `git push origin feature/new-lesson`
5. Open a Pull Request

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 🔗 Useful Links

- [MkDocs Material](https://squidfunk.github.io/mkdocs-material/)
- [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/)
- [GitHub Pages](https://pages.github.com/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Material Design Icons](https://materialdesignicons.com/)

---

**Made with ❤️ to learn MkDocs and practice English!**