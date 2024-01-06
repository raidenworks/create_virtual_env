@echo off

:: [action] change "root" to where your anaconda3 or miniconda is installed
:: set root=D:\anaconda3
set root=D:\anaconda3

:: Prompt user to set name for virtual environment
set /p venvName="Enter name of virtual environment: "

:: Prompt user to set Python version number
set /p pythonVersion="Enter Python version number (press Enter to install latest): "

:: Activate Ananconda Prompt
call %root%\Scripts\activate.bat

:: Create virtual environment with name of venvName in the default envs folder,
:: in my case "D:\anaconda3\envs"
:: [%venvName% = string variable set at the start]
:: call conda create -n %venvName% -y python=3.9
:: call conda create -n %venvName% -y nb_conda_kernels jupyter
if pythonVersion==$null (
   call conda create -n %venvName% -y ^
   nb_conda_kernels numpy pandas jupyter
) else (
   call conda create -n %venvName% -y ^
   python=%pythonVersion% ^
   nb_conda_kernels numpy pandas jupyter
)

:: Activate the virtual environment
:: (this initial activation saves you typing this in the Terminal of VSCode to get
:: this environment to populate in the Jupyter Notebook dropdown list of environments)
call conda activate %venvName%

pause

:: ------------------------------
:: all below unnecessary (just kept here as a record)

:: Install nb_conda_kernels for VS Code to detect the environment (might be needed for both VSCode and Jupyter Notebook
:: call conda install nb_conda_kernels -y

:: Install ipykernel which provides the IPython kernel for Jupyter (seems unneeded)
:: call pip install --user ipykernel

:: The package “pywin32” installed when installing “ipykernel” does work properly
:: We need to uninstall it with pip and reinstall with conda
:: call pip uninstall pywin32 -y
:: call conda install pywin32 -y
:: call python %CD%\%venvName%\Scripts\pywin32_postinstall.py -install

:: Add the created virtual environment to Jupyter
:: call python -m ipykernel install --user --name=%venvName%

:: Install Jupyter Notebook
:: call conda install jupyter -y

