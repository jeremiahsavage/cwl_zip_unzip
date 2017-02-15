#!/usr/bin/env cwl-runner

cwlVersion: v1.0

requirements:
  - class: DockerRequirement
    dockerPull: samepagelabs/zip

class: CommandLineTool

inputs:
  - id: INPUT
    type: File
    inputBinding:
      position: 0

outputs:
  - id: OUTPUT
    type: Directory
    outputBinding:
      glob: "*"

arguments:
  - valueFrom: "-d"
    position: 1
  - valueFrom: "."
    position: 2

baseCommand: [unzip]
