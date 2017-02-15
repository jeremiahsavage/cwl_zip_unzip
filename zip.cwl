#!/usr/bin/env cwl-runner

cwlVersion: v1.0

requirements:
  - class: DockerRequirement
    dockerPull: samepagelabs/zip

class: CommandLineTool

inputs:
  - id: INPUT
    type: Directory
    inputBinding:
      position: 2

outputs:
  - id: OUTPUT
    type: File
    outputBinding:
      glob: $(inputs.INPUT.basename).zip

arguments:
  - valueFrom: "-r"
    position: 0
  - valueFrom: $(inputs.INPUT.basename)
    position: 1

baseCommand: [zip]
