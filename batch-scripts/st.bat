@ECHO OFF

REM Save script name and 
SET me=%~n0
SET parent=%~dp0

REM Argument
SET job=%1

REM Check argument
IF "%job%"=="data-viz" goto data-viz
IF "%job%"=="data-viz-blog" goto data-viz-blog
IF "%job%"=="mtgo" goto mtgo
IF "%job%"=="prog-notes" goto prog-notes
IF "%job%"=="finances" goto finances
IF "%job%"=="d12" goto d12

ECHO %me%: %job% is not a valid option
goto commonexit

REM PROJECTS

:data-viz
REM Open data-viz folder and lunch Jupyter
cd "C:\Users\USER\Dropbox\Projectos\data-viz"
jupyter notebook

:data-viz-blog
REM Open data-viz-blog folder
cd "C:\Users\USER\Dropbox\Projectos\data-viz-blog"
pipenv shell

:mtgo
REM Open mtgo folder
cd "C:\Users\USER\Dropbox\Projectos\mtgo\mtgo_web"
start "" http://localhost:8000/
pipenv run django-dev-server

:prog-notes
REM Open programming-notes folder
cd "C:\Users\USER\Dropbox\Projectos\programming-notes"

:finances
REM Open finances folder
cd "C:\Users\USER\Dropbox\Projectos\finances\finances_web"
start "" http://localhost:8000/
pipenv run django-dev-server


REM WORK

:d12
REM Go to D12 work folder and launch JupyterLab
cd "C:\Users\USER\Dropbox\UA Universidade Aveiro\D12\ml-D12"
jupyter lab

:commonexit