package main // go program starts here

import (
	"fmt"
	"net/http"
	"time"
)

func main() {
	urls := []string{
		"https://www.bath.ac.uk/",
		"https://x.com/",
		"https://www.thisprobablydoesnotexistIhope.com/",
	}

	for _, url := range urls {
		checkURL(url)
	}
}

func checkURL(url string) {
	client := http.Client{
		Timeout: 5 * time.Second,
	}
	resp, err := client.Get(url) // sent a GET request to the URL - receives either a response or an error
	if err != nil {
		fmt.Println("The website", url, "is currently down or does not exist.")
		return
	}

	defer resp.Body.Close() // concept in Go to ensure that the response body is closed after we're done with it

	if resp.StatusCode == 200 {
		fmt.Printf("%s is up and running!\n", url)
	} else {
		fmt.Printf(" %s returned the following status code: %d\n", url, resp.StatusCode)
	}
}
