# Exercise: Linting

1. Check the following files for linting errors:

    - ./countdown/Dockerfile

2. Improve the Dockerfiles

## Hints

To lint a Dockerfile run the following command:

```bash
docker run --rm -i hadolint/hadolint < Dockerfile
```

Print the package version with:

```bash
apt-cache policy <package-name>
```
