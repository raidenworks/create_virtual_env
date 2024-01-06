## Windows script for quickly creating Python virtual environment

### Motivation

I find I need to create virtual environments quickly for different projects. With this script, you just need to enter the virtual environment name and Python version (if needed).
It assumes you already have your Anaconda or Miniconda installed and running properly.

### Instructions

1. Save the `batch_conda_create.bat` file to whatever directory you wish to execute it from. Right-click to edit with your favoured text-editor, e.g. Notepad. Change the `root` value to where your Anaconda or Miniconda is installed in. (I prefer to hard code this in the script as my Anaconda installation directory does not change often, if at all.)

   ![image](https://github.com/raidenworks/create_virtual_env/assets/12216046/2c0b3a24-9c5d-4fc4-9b6f-d455b314f465)

2. Save your changes and when ready to execute the script, double left-click it. Enter the name of your virtual environment at the prompt. (Keep it short and with no spaces.)

   ![image](https://github.com/raidenworks/create_virtual_env/assets/12216046/4d30cf0d-5121-4be4-805b-66f89e1033fb)

3. At the next prompt, enter the Python version number. Press Enter without entering a version number to install the latest version.

   ![image](https://github.com/raidenworks/create_virtual_env/assets/12216046/ac8b47d2-dcb5-4d9d-aafd-c99a11e307b1)

4. The virtual environment should be created within 5-10 seconds.

   ![image](https://github.com/raidenworks/create_virtual_env/assets/12216046/311ec046-25e8-4446-9bf6-8f1a029c5afa)  
   ...
   
   ![image](https://github.com/raidenworks/create_virtual_env/assets/12216046/f4190a0a-3174-4084-b66b-7de5e3fd9042)

5. Activate the virtual environment from your favoured IDE or terminal.

   ![image](https://github.com/raidenworks/create_virtual_env/assets/12216046/2f1c5eff-4588-426a-8f5c-ad28e97344e2)
