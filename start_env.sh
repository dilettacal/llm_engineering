#!/bin/bash

# Update the llms environment with the latest dependencies
echo "Updating the llms environment with the latest dependencies..."
conda env update -f environment.yml --prune | grep -v -E '^\s*#|activate this environment|deactivate an active environment'

# Source conda.sh to enable 'conda activate' in scripts
echo "Sourcing conda.sh to enable 'conda activate'..."
CONDA_BASE=$(conda info --base)
source "$CONDA_BASE/etc/profile.d/conda.sh"

# Activate the llms environment
echo "Activating the llms environment..."
conda activate llms

# Start Jupyter Lab
echo "Starting Jupyter Lab..."
jupyter lab