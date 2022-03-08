# Libreoffice cli action

> This is a preview version, it may not work as expected.

This action runs any command inside the libreoffice base image

## Inputs

### `command`

**Required** The command line to run. Default `libreoffice --headless --invisible --version`.

## Usage

```yaml
uses: jmservera/libreoffice-action@v0.2
with:
  # Required, the command to run
  command: libreoffice --headless --invisible --convert-to pdf 'originalfile.pptx' --outdir 'output'
```
