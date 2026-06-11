# frontend [![Earthly Lunar status](https://badges.staging.earthly.dev:443/badges/pantalasa-cronos-frontend-main?v=1)](https://lunar.demo.earthly.dev/d/aecnnrn714em8d/component-details?orgId=1&var-component=github.com/pantalasa/frontend&var-pr=null)

Frontend web application for the Pantalasa merchant dashboard, monitored by
Earthly Lunar.

## Project Overview

This is a Node.js single-page application that renders the operator dashboard
and communicates with the Pantalasa backend REST API.

## Installation

```bash
npm install
```

## Usage

```bash
# Start the app
node src/index.js

# Run tests
npm test
```

The service listens on port 80 by default.

## Project structure

| Path | Purpose |
|------|---------|
| `src/` | Application source (entrypoint `src/index.js`) |
| `Dockerfile` | Container build (non-root, with HEALTHCHECK) |
| `.argocd/` | ArgoCD Application manifest |
| `pantalasa.json` | Service manifest (owner, domain, deployment) |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Security reports: [SECURITY.md](SECURITY.md).

## Configuration

Central Lunar configuration: https://github.com/pantalasa/lunar
