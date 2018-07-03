FROM mangothecat/buildr:3.4.3

RUN apt-get update -qq && apt-get -y install \
  apt-utils \
  libbz2-dev \
  libpcre3-dev \
  liblzma-dev \
  libz-dev \
  libxml2-dev \ 
  libssl-dev \
  libcurl4-openssl-dev \
  zlib1g-dev \
  texlive-latex \
  && . /etc/environment \
  && install2.r --error \
    --repos 'http://www.bioconductor.org/packages/release/bioc' \
    --repos $MRAN \ 
    remotes
    backports
    assertthat
    crayon
    rprojroot
    brew
    digest
    R6
    desc
    commonmark
    xml2
    cli
    praise
    rlang
    withr
    mime
    curl
    openssl
    httr
    memoise
    whisker
    rstudioapi
    jsonlite
    highr
    markdown
    knitr
    yaml
    htmltools
    evaluate
    base64enc
    bitops
    R.oo
    R.methodsS3
    R.utils
    lazyeval
    rex
    lattice
    processx
    Matrix
    pkgconfig
    callr
    codetools
    stringdist
    igraph
    clisymbols
    cyclocomp
    lintr
    rcmdcheck
    whoami
    xmlparsedata
    bindr
    utf8
    bindrcpp
    BH
    plogr
    pillar
    dplyr
    glue
    purrr
    tibble
    tidyselect
    piton
    rematch
    cellranger
    zip
    hms

COPY build.sh /home/docker/

