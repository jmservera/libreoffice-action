# Libreoffice cli action

This action runs any command inside the libreoffice base image

## Inputs

## `command`

**Required** The command line to run. Default `libreoffice --headless --invisible --version`.

## Usage

```yaml
uses: actions/libreoffice-action@v1
with:
  # Required, the command to run
  command: libreoffice --headless --invisible --convert-to pdf 'originalfile.pptx' --outdir 'output'
```
