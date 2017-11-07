# GooglePipelinesRStan

#################################################################################

# How to run a custom script with
# Google Genomics Pipelines
# David L Gibbs
# dgibbs@systemsbiology.org
# November 7, 2017

# https://cloud.google.com/genomics/overview

#################################################################################

# In this example, I'm going to be fitting Bayesian models for logistic Regression
# using Stan. (http://mc-stan.org/) Each job will process a single file,
# but we could also have each job represent a parameter set, or model, all
# processing the same data.

This collection of files can be used to demonstrate:

1. Using a pre-built docker image from docker hub.

2. Generating a set of commands, each running a job in the google cloud.

3. Running a custom R script on user data, both contained in a google bucket.

4. Using the Google genomics pipeline to automatically setup and teardown a VM.

Please see the 'how_to_google_gen_pipeline.txt' file for instructions.
