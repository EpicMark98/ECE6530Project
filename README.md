# ECE6530Project
This is a repository containing Matlab code and other files for an ECE 6530
project. The project goes over a [*Sampling and Aliasing*
unit](https://dspfirst.gatech.edu/chapters/04samplin/overview.html) from the
Georgia Institute of Technology (GT).

Within *Sampling and Aliasing*, there are two Matlab labs: **Lab P-8** and **Lab
S-8**. Lab P-8 goes over digital images, and Lab S-8 goes over spectrographs.
The Matlab code for this project is located in the following locations:
* Lab P-8 (digital images) is located in `ImageProcessing`
* Lab S-8 (spectrograms) is located in `ChirpSpectrogram`.
In each of these directors, there is a `main.m` Matlab file. This is the main
script the runs the code for the project.

## Required Software
The labs from GT utilize their *DSP First Toolbox*. This toolbox is required to
run the Matlab scripts in this project. This toolbox is included in this
repository as the `DSP First Toolbox` directory. After this directory and its
contents are on your local machine (clone the repo) do the following:
1. Open Matlab.
1. Within Matlab, navigate to this repository's directory ("ECE6530Project").
1. Within Matlab, type the command `addpath("DSP First Toolbox")`.
1. Matlab should now be able to use the toolbox. The Matlab removes this path
   when the Matlab application exits.

## How to Run Code
After Matlab has added the toolbox to its path, the Matlab scripts can be run.
The `main.m` scripts should be run from *within* the containing directory.

For the digital images lab, the `main.m` script is located in
`ImageProcessing/LabP8_Exercise3`.

For the spectrograms lab, the `main.m` scripts are located in
`ChripSpectrogram/LabS8_Exercise2`.

In the same directories that have `main.m`, there are `html` directories which
contain `main.html`. These are the published Matlab reports.
