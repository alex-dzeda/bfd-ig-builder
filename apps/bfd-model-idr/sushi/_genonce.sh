#!/bin/bash
# Add Homebrew Ruby to PATH for Jekyll
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/4.0.0/bin:$PATH"

# Check if sushi is installed
if ! command -v sushi &> /dev/null
then
    echo "SUSHI could not be found. Please install it with 'npm install -g fsh-sushi'."
    exit
fi

# Run SUSHI
sushi .

# The IG Publisher expects the IG resource in a specific location
mkdir -p input
if [ -f "fsh-generated/resources/ImplementationGuide-bfd.json" ]; then
    cp fsh-generated/resources/ImplementationGuide-bfd.json input/
fi

# Run IG Publisher
if [ -f "publisher.jar" ]; then
    java -jar publisher.jar -ig ig.ini
else
    echo "publisher.jar not found. Run ./_updatePublisher.sh first."
fi
