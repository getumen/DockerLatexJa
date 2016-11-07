alias dlatex='docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v $PWD:/data yosssieeee/doker_latex_ja platex'
alias dbibtex='docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v $PWD:/data yosssieeee/doker_latex_ja pbibtex'
alias ddvipdfmx='docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v $PWD:/data yosssieeee/doker_latex_ja dvipdfmx'
texc(){
        dlatex $1
        dbibtex $1
        dlatex $1
        dlatex $1
        ddvipdfmx $1
}
