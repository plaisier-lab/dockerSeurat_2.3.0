FROM rocker/r-base

RUN apt-get update
RUN apt-get install -y libcurl4-openssl-dev libssl-dev libssh2-1-dev libxml2-dev
RUN R -e "install.packages('devtools')"
RUN R -e "install.pacakges('devtools')"
RUN R -e "install.pacakges('BiocManager')"
RUN R -e "BiocManager::install('multtest')"
RUN R -e "devtools::install_version('Seurat', version = '2.3.0', repos = 'http://cran.us.r-project.org')"

