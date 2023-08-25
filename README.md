The GH Actions file does 4 things:

1. Run a simple Python script which simulates a dice roll.  Results are logged.
2. Build and push docker image to GitHub Packages
3. Build and push docker image to Docker Hub
4. Run pylint on all the Python scripts in the "test" folder.  This step is done last because it appears that linting errors will abort the job.
