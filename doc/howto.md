# CI for Ansible roles

## Getting started

  1. Create the repository (github)
  1. Create the role (molecule init role -r <role name>) 
  1. Add submodule to the repo
  1. verify that things are ok : `molecule test`
  1. ignore `.molecule` in `.gitignore`
  1. enable the role in galaxy
    1. go to your roles and synch
    1. flip the switch
    1. check that the meta parses
    1. search for  your role : `ansible-galaxy search the-boss`

## Set up the pipeline

  1. Enable travis - `travis enable`
  1. Initialise the travis file - `travis init` (select python)
  1. Customise `.travis.yml`
  1. Commit travis to the repo and push to start the first test.

## Start adding tasks

