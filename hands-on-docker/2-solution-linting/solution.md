# Exercise: Linting

1. Check the following files for linting errors:

    - ./countdown/Dockerfile

2. Improve the Dockerfile

## Solution

Check the Dockerfiles here to see example solutions.

Command:

```bash
docker run --rm -t -v $PWD:/pwd:ro hadolint/hadolint hadolint /pwd/Dockerfile
```
