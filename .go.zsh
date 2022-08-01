#go
export GOHOME=$HOME/go
export GOPATH=$HOME/go

export PATH=$PATH:$(go env GOPATH)/bin

alias gt='go test ./...'

function gotest {
  go test ./... | sed ''/PASS/s//$(printf "\033[32mPASS\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | sed ''/actual/s//$(printf "\033[31mactual\033[0m")/
}
