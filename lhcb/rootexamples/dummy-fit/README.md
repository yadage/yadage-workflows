# ROOT example
The workflow has two stages. In the first stage signal and background are generated. In the second stage RooFit makes a fit for the signal and background.

This example uses ROOT package [RooFit](https://root.cern.ch/roofit). 
The code was taken from [here](https://root.cern.ch/root/html/tutorials/roofit/rf502_wspacewrite.C.html) and [here](https://root.cern.ch/root/html/tutorials/roofit/rf503_wspaceread.C.html), and slightly modified.


## Run with Yadage

`yadage-run workdir workflow.yml input.yml`

## Run with Docker

`docker run -it atrisovic/rootexample bash`

and then:

`root -b -q 'gendata.C(2000,"data.root")'`
`root -b -q 'fitdata.C("data.root","plot.png")'`
