# Global instructions for Claude Code

- Converse in Japanese by default. Switch to English only if the user writes in English or explicitly asks for it.

## Commit messages

- Follow Conventional Commits (`type(scope): subject`, e.g. `fix(zsh): correct asdf path`).
- Write the entire message in English.
- Use lowercase throughout, including the subject line (no capitalized first word).

## Docker

- If the project root contains a `compose.yml`/`compose.yaml` (or the legacy `docker-compose.yml`/`docker-compose.yaml`), treat the project as docker-compose-based.
- For such projects, run compose operations through the `fig` alias (`fig = docker compose`) instead of calling `docker compose` directly, e.g. `fig exec <service> ...`, `fig up`, `fig logs`.

## Branch names

- Default prefix: `feature/<slug>` (e.g. `feature/update_claude_md`), words in the slug separated by underscores, not hyphens.
- When the work is tied to an issue number, use `feature/<issue-number>_<slug>` (e.g. `feature/1234_issue_func`).
- For anything else (hotfix, release, etc.), ask the user for the prefix instead of guessing.

## git push

- Never run `git push` on your own initiative. Only push when the user explicitly asks for it in that turn.
