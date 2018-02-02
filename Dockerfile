FROM golang:1.9.3

WORKDIR /go/src/github.com/l3x/git-tester  
COPY .git     .  
COPY main.go   .

RUN GIT_COMMIT=$(git rev-list -1 HEAD) && \  
  go build -ldflags "-X main.GitCommit=$GIT_COMMIT"

CMD ["./git-tester"]  