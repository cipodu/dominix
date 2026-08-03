FROM python:3.12-slim AS build
WORKDIR /app
COPY pyproject.toml .
COPY web/ web/
COPY docs/ docs/
RUN pip install --no-cache-dir .
RUN cd web && mkdocs build

FROM nginx:alpine
COPY --from=build /app/web/site /usr/share/nginx/html
EXPOSE 80
