# ROOT example

This ROOT example mimics a physics analysis, where normally the data is first processed and then presented in graphical form. 

This example uses ROOT package [RooFit](https://root.cern.ch/roofit), and it runs with ROOT 6. 
The code was taken from [here](https://root.cern.ch/root/html/tutorials/roofit/rf502_wspacewrite.C.html) and [here](https://root.cern.ch/root/html/tutorials/roofit/rf503_wspaceread.C.html), and it was slightly modified.

The workflow has two stages. In the first state, signal and background are generated. In the second stage RooFit makes a fit for the signal and background.


## Run with Yadage

`echo 'events: 20000' > input.yml`

`yadage-run workdir workflow.yml input.yml`

See the plot at:

`eog workdir/fitdata/plot.png`

## Run with Docker only

`docker run -it atrisovic/rootexample bash`

and then:

`root -b -q 'gendata.C(2000,"data.root")'`

`root -b -q 'fitdata.C("data.root","plot.png")'`
