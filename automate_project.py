import os
import nbformat
import subprocess
import nbconvert


def run_notebook(notebook_path):
    with open(notebook_path, 'r', encoding='utf-8') as notebook_file:
        notebook_content = nbformat.read(
            notebook_file, as_version=nbformat.NO_CONVERT)
    ep = nbconvert.preprocessors.ExecutePreprocessor(timeout=None)
    ep.preprocess(notebook_content, {'metadata': {
                  'path': os.path.dirname(notebook_path)}})


def run_dbt_models():
    dbt_command = "dbt run"
    subprocess.run(dbt_command, shell=True)


def run_dbt_operation():
    command = "dbt run-operation LoadDataWarehouse"
    subprocess.run(command, shell=True)


def main():
    notebook_path = 'C:/Users/USER/Documents/MSSQL-Snowflake-DBT/MSSQL-Snowflake-DBT.ipynb'
    dbt_project_path = 'C:/Users/USER\Documents/MSSQL-Snowflake-DBT'

    # Run the Notebook
    run_notebook(notebook_path)

    # Execute DBT Run
    os.chdir(dbt_project_path)
    run_dbt_models()

    # Execute DBT Operation
    os.chdir(dbt_project_path)
    run_dbt_operation()


if __name__ == "__main__":
    main()
