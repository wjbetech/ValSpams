## Checklist

1. Update `CHANGELOG.md` for the outgoing build.
2. Confirm `ValSpams.toc` and `.pkgmeta` still match the intended package metadata.
3. Make sure the exact commit you want to publish is pushed.
4. Create an annotated tag.
5. Push the tag.
6. Watch the GitHub Actions release workflow.
7. Confirm the GitHub release exists.
8. Confirm the CurseForge file finishes processing.
9. Do one install or update smoke test from the packaged file.

## Tag formats

- Stable releases come from `main` and use tags like `v1.0.2`.
- Beta releases come from `dev` and use tags like `v1.0.2-beta.1`.
- Only tag the exact commit you want users to receive.

## Stable release from `main`

```bash
git checkout main
git pull origin main
git push origin main
git tag -a v1.0.2 -m "Release v1.0.2"
git push origin v1.0.2
```

## Beta release from `dev`

```bash
git checkout dev
git pull origin dev
git push origin dev
git tag -a v1.0.2-beta.1 -m "Release v1.0.2-beta.1"
git push origin v1.0.2-beta.1
```
