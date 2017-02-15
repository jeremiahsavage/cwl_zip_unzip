#!/usr/bin/env cwl-runner

cwlVersion: v1.0

class: Workflow

inputs:
  - id: input_dir
    type: Directory

outputs:
  - id: unzip_output
    type: Directory
    outputSource: unzip/OUTPUT

steps:
  - id: zip
    run: zip.cwl
    in:
      - id: INPUT
        source: input_dir
    out:
      - id: OUTPUT

  - id: unzip
    run: unzip.cwl
    in:
      - id: INPUT
        source: zip/OUTPUT
    out:
      - id: OUTPUT
