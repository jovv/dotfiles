# general aliases
alias la='ls -lA'

# kubernetes aliases
alias kkevents='kubectl get events --sort-by=.metadata.creationTimestamp'
alias kkcon='kubectl config use-context'
alias kkns='kubectl config set-context --current --namespace'
alias kk='kubectl'

# clean log output
alias clo="sed 's/\x1B\[[0-9;]\{1,\}[A-Za-z]//g'"

# set java version
alias setjdk8='sudo update-java-alternatives --set java-1.8.0-openjdk-amd64'
alias setjdk11='sudo update-java-alternatives --set java-1.11.0-openjdk-amd64'

# processes
alias zombies='ps axo stat,ppid,pid,comm | grep -w defunct'

# terraform
alias tg='terragrunt'
alias tf='terraform'

# argoCD
alias argo='argocd'
