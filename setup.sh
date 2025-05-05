#!/bin/bash

# HOW TO RUN THIS SCRIPT
# 1. Save this script as setup.sh in your project directory.
# 2. Make it executable: chmod +x setup.sh
# 3. Run it: source setup.sh

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}Setting up Python environment...${NC}"

# Check if virtual environment directory exists
if [ -d "venv" ]; then
    echo -e "${GREEN}Virtual environment already exists.${NC}"
else
    echo -e "${YELLOW}Creating virtual environment...${NC}"
    python -m venv venv
    echo -e "${GREEN}Virtual environment created successfully.${NC}"
fi

# Activate the virtual environment
echo -e "${YELLOW}Activating virtual environment...${NC}"
source venv/bin/activate

# Check if activation was successful
if [[ "$VIRTUAL_ENV" != "" ]]; then
    echo -e "${GREEN}Virtual environment activated successfully.${NC}"
    
    if [ -f "requirements.txt" ]; then
        echo -e "${YELLOW}Installing required packages from requirements.txt...${NC}"
        pip install -r requirements.txt
        echo -e "${GREEN}Packages installed successfully.${NC}"
    else
        echo -e "${YELLOW}No requirements.txt file found. Skipping package installation.${NC}"
    fi
    
    echo -e "${GREEN}Setup complete! The virtual environment is now active.${NC}"
    echo -e "${YELLOW}To deactivate the virtual environment, run: deactivate${NC}"
else
    echo -e "\033[0;31mFailed to activate virtual environment.${NC}"
    exit 1
fi
