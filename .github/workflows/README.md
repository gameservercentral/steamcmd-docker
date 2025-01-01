### GitHub Actions Workflow

The workflow consists of three jobs:

- **Version**: This job bumps the version and pushes the tag.
- **Build**: This job builds the Docker image and pushes it to the GitHub Container Registry.
- **Release**: This job creates a GitHub release.