#!/bin/bash
set -e

# Create required directories
mkdir -p exercises/python
mkdir -p data
mkdir -p documentation

# Create the Python virtual environment
cd exercises/python
python3 -m virtualenv venv
source venv/bin/activate

# Install required libraries in the virtual environment
pip install jupyter pandas numpy matplotlib

# Create a new Jupyter Notebook for Python exercises
jupyter notebook --generate-config
jupyter notebook --NotebookApp.token='' --NotebookApp.password=''

echo "Python exercise environment created successfully."



# Create clojure-exercises directory and example Clojure script
mkdir clojure-exercises
cat << EOL > clojure-exercises/hello_world.clj
(ns hello-world)

(defn -main
  [& args]
  (println "Hello, World!"))
EOL

echo "Clojure exercises directory and example script created."
