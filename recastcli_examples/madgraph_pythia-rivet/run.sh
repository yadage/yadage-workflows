rm -r workdir
WORKFLOW=${1:-workflows/workflow.yml}
yadage-run workdir $WORKFLOW inputs/input.yml -d initdir=$PWD/inputs
