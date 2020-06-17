*** Settings ***
Documentation    Suite description
Library           String
Resource          resources/base.robot
Resource          common/common.robot
*** Test Cases ***
Train Workflow Test
  ${rand_str} =  Generate Random String  8  [LOWER]
  Aistack Login
  Create Dataset  dataset-${rand_str}
  Create Code  code-${rand_str}
  Create Train  train-${rand_str}  dataset-${rand_str}  code-${rand_str}  model-${rand_str}
  Stop Train  train-${rand_str}
  Delete Train  train-${rand_str}
  Delete Dataset  dataset-${rand_str}
  Delete Code     code-${rand_str}

