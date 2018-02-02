package main


import (  
        "fmt"
        "time"
)

var GitCommit string

func main() {  
  fmt.Printf("Hello world, version: %s\n", GitCommit)
        
	go func() {
		for {
			fmt.Printf(".")
			time.Sleep(time.Duration(5) * time.Second)
		}
	}()        
        
  select {}
}
