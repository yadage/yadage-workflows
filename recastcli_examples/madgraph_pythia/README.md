# madgraph_pythia
This repo is for testing the magraph-pythia workflow generated from [recast-workflow](https://github.com/recast-hep/recast-workflow/tree/dev).  
  
Use `./run.sh` to run yadage-workflow on workflows/workflow.yml, which contains the working madgraph-pythia stage.   
The inputs folder contains all files that can be used as parameters, and inputs/input.yml maps the inputs to their values.
The workflows folder contains three yadage workflows:
- genflow.yml is a back-up version with the originally generated workflow.  
- madgraph_simple.yml is a workflow only using madgraph that takes a proc_card.dat and outputs an events.lhe file
- workflow.yml is a workflow that runs madgraph and pythia in succession and takes a proc_card.dat and outputs a .hepmc file

## To Just Run Madgraph
1. Change workflows/workflow.yml to workflows/simple_madgraph.yml
2. Execute ```./run.sh```
3. Output .lhe file will be in workdir/madgraph
 
## List of Changes Made to Generated Workflow
- removed unecessary parameters(param_card, run_card) from madgraph workflow
- changed process_type for steps from running scripts to running interprolated-string-cmd
- changed pythia docker image from recast/pythia to recast/madgraph-pythia
- image tags set to 2.6.7_v2 and 2.6.6 for madgraph and pythia, respectively
