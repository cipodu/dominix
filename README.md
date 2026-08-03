# Laboratorium Arbitristae

> Espacio para prototipar ideas, investigando y diseñando estrategias para la grandeza tecnológica y productiva de la República Dominicana.

![Escudo de Armas - Laboratorio Arbitrista](https://raw.githubusercontent.com/csiglab/Meta/refs/heads/main/img/resized/bremontix-laboratorio-arbitrista_256x256.png)

## Linux: Build & Run

- python3 -m venv env
- source env/bin/activate
- deactivate

- Build: docker build -t arbitriologia .
- Run: docker run -p 8080:80 arbitriologia

## Requirements

- pip freeze > requirements.txt
- pip install -r requirements.txt

## Small Scripts

```bash
find . -type f -not -path './env/**' -not -path  './.*' | shuf -n 1
```

## Build

...

## References

- [Wolfram Alpha](https://www.wolframalpha.com/)
- [Harvard Growth Lab ECI](https://atlas.cid.harvard.edu)
- [Our World In Data](https://ourworldindata.org/)
- [Data USA](https://datausa.io/)
- [Google Ngrams](https://books.google.com/ngrams/)
- [OEC Global Trade](https://oec.world/en)
- [ckan Open Datasource Management System](https://ckan.org/)
- Tree Map: https://atlas.cid.harvard.edu/countries/114/export-basket
- Economics: Internatioal Trade->  Growth In Global Markets / https://atlas.cid.harvard.edu/countries/114/growth-dynamics
- Growth in Global Market Share -> https://atlas.cid.harvard.edu/countries/114/market-share
- https://github.com/pymupdf/PyMuPDF
- https://github.com/jsvine/pdfplumber
- https://camelot-py.readthedocs.io/en/master/
- https://github.com/camelot-dev/camelot
- https://github.com/csiglab/Meta
