# Madgraph_Pythia Rivet Contur Workflow
This is a directory made for testing the madgraph-pythia-rivet-contur workflow.

## Dependencies
A working installation of python3 and yadage, which can be installed using pip:  

        pip3 install yadage
        
## Included Workflows
1. [./workflows/workflow.yml](https://github.com/vladov3000/yadage-tests/blob/master/madgraph_pythia-rivet-contur/workflows/workflow.yml) contains a full analysis using madgraph for generation, pythia for showering, rivet for selection, and contur for statistics. The workflow takes the number of events to generate, a proc_card as input for madgraph, and a rivet analysis id and returns the ANALYSIS folder contur produces.

2. [./workflows/simple_contur.yml](https://github.com/vladov3000/yadage-tests/blob/master/madgraph_pythia-rivet-contur/workflows/simple_contur.yml) just contains the contur step. It takes a .hepmc file as input and returns the ANALYSIS folder contur produces.

## Setting Inputs
First, move all files used as inputs to [./inputs](https://github.com/vladov3000/yadage-tests/tree/master/madgraph_pythia-rivet-contur/inputs). This is a necessary step for yadage to run properly. Then, map the filenames to input names in [./inputs/inputs.yml](https://github.com/vladov3000/yadage-tests/blob/master/madgraph_pythia-rivet-contur/inputs/input.yml). You can also set other non-file parameters in inputs.yml.
        
## Running the Workflow
Enter ```./run.sh``` to run the default workflow [./workflows/workflow.yml](https://github.com/vladov3000/yadage-tests/blob/master/madgraph_pythia-rivet-contur/workflows/workflow.yml).

To run [./workflows/simple_contur.yml](https://github.com/vladov3000/yadage-tests/blob/master/madgraph_pythia-rivet-contur/workflows/simple_contur.yml):

        ./run.sh ./workflows/simple_contur.yml
        
In general, to run any workflow using the run script:

        ./run.sh /path/to/workflow.yml

## Using Outputs
After running yadage, a directory called workdir will be generated. In workdir, you will find the ouput from each step organized into seperate folders named after the step. 
