
# [**ITS_LIVE** Global Glacier Velocity Exploration and Analysis](https://its-live.jpl.nasa.gov/) 


[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5496304.svg)](https://doi.org/10.5281/zenodo.5496304)


<img title="ITS_LIVE" src="notebooks/img/header.png" width="50%"/>

Luis Lopez[<sup>1</sup>](#fn1), Alex Gardner[<sup>2</sup>](#fn2), Mark Fahnestock[<sup>3</sup>](#fn3), Ted Scambos[<sup>4</sup>](#fn4), Maria Liukis[<sup>2</sup>](#fn2), Chad Greene[<sup>2</sup>](#fn2), Yang Lei[<sup>5</sup>](#fn5), Joe Kennedy[<sup>3</sup>](#fn3),  Bruce Wallin[<sup>1</sup>](#fn1)
 
[![Binder](https://binder.pangeo.io/badge_logo.svg)](https://mybinder.org/v2/gh/earthcube2021/ec21_lopez_etal/main?urlpath=lab/tree/notebooks/LL_01_ITS_LIVE_global_glacier_velocity_exploration_and_analysis.ipynb)

<span id="fn1" style="font-size: small">1.National Snow and Ice Data Center</span><BR>
<span id="fn2" style="font-size: small">2.NASA Jet Propulsion Laboratory</span><BR>
<span id="fn3" style="font-size: small">3.University of Alaska Fairbanks</span><BR>
<span id="fn4" style="font-size: small">4.University of Colorado Earth Science and Observation Center</span><BR>
<span id="fn5" style="font-size: small">5.California Institute of Technology</span>

## Summary

**Global land ice velocities.**
The Inter-mission Time Series of Land Ice Velocity and Elevation (ITS_LIVE) project facilitates ice sheet, ice shelf and glacier research by providing a globally comprehensive and temporally dense multi-sensor record of land ice velocity and elevation with low latency. Scene-pair velocities were generated from satellite optical and radar imagery.

The notebooks on this project demonstrate how to search and access ITS_LIVE velocity pairs and provide a simple example on how to build a data cube.

Project at NASA's Github account: [https://github.com/nasa-jpl/itslive-explorer](https://github.com/nasa-jpl/itslive-explorer)

## Usage with Binder

The Binder button above allows you to explore and run the notebook in a shared cloud computing environment without the need to install dependencies on your local machine. Note that this option will not directly download data to your computer; instead the data will be downloaded to the cloud environment.

## Usage with Docker

### On Mac OSX or Linux


1. Install [Docker](https://docs.docker.com/install/). Use the left-hand navigation to select the appropriate install depending on operating system.

2. Download the [repository from Github](https://github.com/nasa-jpl/itslive-explorer/archive/master.zip).

3. Unzip the file, and open a terminal window in the `itslive-explorer` folder's location.

4. From the terminal window, launch the docker container using the following command, replacing [path/notebook_folder] with your path and notebook folder name:

```bash
docker run --name itslive -p 8888:8888 -v [path/notebook_folder]:/home/jovyan/work nsidc/itslive-explorer
```

Example:

```bash
docker run --name itslive -p 8888:8888 -v /Users/name/Desktop/itslive-explorer:/home/jovyan/work nsidc/itslive-explorer
```

Or, with docker-compose:

```bash
docker-compose up
```

If you want to mount a directory with write permissions, you need to grant the container the same permissions as the one on the directory to be mounted and tell it that has "root" access (within the container). This is important if you want to persist your work or download data to a local directory and not just the docker container. Run the example command below for this option:

```bash
docker run --name itslive -e NB_UID=$(id -u) --user root -p 8888:8888 -v  /Users/name/Desktop/itslive-explorer:/home/jovyan/work nsidc/itslive-explorer
```

The initialization will take some time and will require 2.6 GB of space. Once the startup is complete you will see a line of output similar to this:

```
To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-6-open.html
    Or copy and paste one of these URLs:
        http://4dc97ddd7a0d:8888/?token=f002a50e25b6f623aa775312737ba8a23ffccfd4458faa6f
     or http://127.0.0.1:8888/?token=f002a50e25b6f623aa775312737ba8a23ffccfd4458faa6f
```

If you started your container with the `-d`/`--detach` option, check `docker logs itslive` for this output.

5. Open up a web browser and copy one of the URLs as instructed above.

6. You will be brought to a Jupyter Notebook interface running through the Docker container. The left side of the interface displays your local directory structure. Navigate to the **`work`** folder of the `itslive-explorer` repository folder. You can now interact with the notebooks to explore and access data.


### On Windows

1. Install [Docker](https://docs.docker.com/docker-for-windows/install/).

2. Download the [repository from Github](https://github.com/nasa-jpl/itslive-explorer/archive/master.zip).

3. Unzip the file, and open a terminal window (use Command Prompt or PowerShell, not PowerShell ISE) in the `itslive-explorer` folder's location.

5. From the terminal window, launch the docker container using the following command, replacing [path\notebook_folder] with your path and notebook folder name:

```bash
docker run --name itslive -p 8888:8888 -v [path\notebook_folder]:/home/jovyan/work nsidc/itslive-explorer
```

Example:

```bash
docker run --name itslive -p 8888:8888 -v C:\notebook_folder:/home/jovyan/work nsidc/itslive-explorer
```

Or, with docker-compose:

```bash
docker-compose up
```

If you want to mount a directory with write permissions you need to grant the container the same permissions as the one on the directory to be mounted and tell it that has "root" access (within the container)

```bash
docker run --name itslive --user root -p 8888:8888 -v C:\notebook_folder:/home/jovyan/work nsidc/itslive-explorer
```

The initialization will take some time and will require 2.6 GB of space. Once the startup is complete you will see a line of output similar to this:

```
To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-6-open.html
    Or copy and paste one of these URLs:
        http://(6a8bfa6a8518 or 127.0.0.1):8888/?token=2d72e03269b59636d9e31937fcb324f5bdfd0c645a6eba3f
```

If you started your container with the `-d`/`--detach` option, check `docker logs itslive` for this output.

6. Follow the instructions and copy one of the URLs into a web browser and hit return. The address should look something like this:

`http://127.0.0.1:8888/?token=2d72e03269b59636d9e31937fcb324f5bdfd0c645a6eba3f`

7. You will now see the itslive-explorer repository within the Jupyter Notebook interface. Navigate to **/work** to open the notebooks.

8. You can now interact with the notebooks to explore and access data.

## Usage with Conda

Install miniconda3 (Python 3.7) for your platform from [https://docs.conda.io/en/latest/miniconda.html](https://docs.conda.io/en/latest/miniconda.html)

Download the [itslive-explorer](https://github.com/nasa-jpl/itslive-explorer) repository from Github by clicking the green 'Code' button located at the top right of the repository page and clicking 'Download Zip'.

Unzip the file, and open a command line or terminal window in the itslive-explorer folder's location.

From a command line or terminal window, install the required environment with the following commands:

```bash
conda env create -f binder/environment.yml && conda activate itslive-explorer
./binder/postBuild
```

You should now see that the dependencies were installed and our environment is ready to be used.

If you are a returning user, please make sure your repository is up to date and run the following to update your environment:

```
conda env update -f binder/environment.yml
```

Activate the environment with

```
conda activate itslive-explorer
```

Launch the notebook locally with the following command:

```bash
jupyter lab
```

This should open a browser window with the JupyterLab IDE, showing your current working directory on the left-hand navigation. Navigate to the notebooks folder of choice and click on their associated *.ipynb files to get started.

> **NOTE:** Sometimes Conda environments change (break) even with pinned down dependencies. If you run into an issue with dependencies for the itslive-explorer please open an issue and we'll try to fix it as soon as possible.


## Credit

This software is developed by the National Snow and Ice Data Center with funding from multiple sources.

## License

This repository is licensed under the MIT license. [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

