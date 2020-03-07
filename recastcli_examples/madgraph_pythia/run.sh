rm -r workdir
yadage-run workdir workflows/workflow.yml inputs/input.yml -d initdir=$PWD/inputs
