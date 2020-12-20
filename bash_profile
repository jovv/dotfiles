# colors
export LSCOLORS=exfxcxdxbxegedabagacad

###
# Go setup
export GO111MODULE="on"
export GOPATH=$HOME/go/
export GOROOT=/usr/local/Cellar/go/1.15.5/libexec/
export GOBIN=$HOME/go/bin

# general aliases
alias la='ls -lA'

# kubernetes aliases
alias kkevents='kubectl get events --sort-by=.metadata.creationTimestamp'
alias kkcon='kubectl config use-context'
alias kkns='kubectl config set-context --current --namespace'
alias kk='kubectl'

# golang aliases
alias gotccnt='go test -covermode=count -coverprofile=count.out && go tool cover -html=count.out'

# AWS aliases
alias awsbj='aws batch describe-jobs --jobs'
alias awsbjl='aws logs get-log-events --log-group-name /aws/batch/job --log-stream-name'

