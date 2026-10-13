marp := "npx -y @marp-team/marp-cli@4 --theme-set pythonfloripa.css --html --allow-local-files"

# Present the deck in the browser with live reload
slides:
    {{marp}} --server .

# Export to PDF
pdf:
    {{marp}} --pdf -o python-floripa-100.pdf slides.md

# Export to PowerPoint (each slide becomes an image)
pptx:
    {{marp}} --pptx -o python-floripa-100.pptx slides.md

# Export a standalone HTML file
html:
    {{marp}} -o python-floripa-100.html slides.md

# Build index.html for GitHub Pages
site:
    {{marp}} -o index.html slides.md
