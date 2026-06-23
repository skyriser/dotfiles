# Global instructions for Claude Code

- Converse in Japanese by default. Switch to English only if the user writes in English or explicitly asks for it.

## Commit messages

- Follow Conventional Commits (`type(scope): subject`, e.g. `fix(zsh): correct asdf path`).
- Write the entire message in English.
- Use lowercase throughout, including the subject line (no capitalized first word).

## Docker

- If the project root contains a `compose.yml`/`compose.yaml` (or the legacy `docker-compose.yml`/`docker-compose.yaml`), treat the project as docker-compose-based.
- For such projects, run compose operations through the `fig` alias (`fig = docker compose`) instead of calling `docker compose` directly, e.g. `fig exec <service> ...`, `fig up`, `fig logs`.
