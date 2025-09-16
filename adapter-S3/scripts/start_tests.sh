#!/bin/bash

# Install allure plugin
# pip install robotframework-allure2

# Execute the script, generate robot and allure results
robot --listener "allure_robotframework;$ADAPTER_S3_DIR/results/allure-results" ../../consul/crud/crud.robot

# Execute the script and generate allure results only
# robot --output NONE --log NONE --report NONE --listener "allure_robotframework;$ADAPTER_S3_DIR/results/allure-results" ../../consul/crud/crud.robot


# Capture the exit code from the script
exit_code=$?

# Exit the shell script with the same exit code
exit $exit_code