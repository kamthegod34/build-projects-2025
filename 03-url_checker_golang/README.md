# 🚀 My First Go Automation Script — URL Health Checker

This project is my very first Go (Golang) program! I built a simple automation tool that checks whether websites are up or down by pinging their URLs and reporting the status.

---

## 🎯 What It Does

- Takes a list of URLs (hardcoded in the script)  
- Sends an HTTP GET request to each URL  
- Reports if the site is UP (status code 200) or DOWN (error or other status)  
- Displays helpful messages with colored emoji for quick understanding

---

## 🧩 Why I Built This

As someone new to Go, I wanted a practical project to get comfortable with:

- Go syntax and structure  
- Working with packages and imports  
- Basic HTTP requests  
- Functions and loops  
- Handling errors gracefully

This script helped me understand how to write simple but useful automation in Go!

---

## 📦 How to Run It

1. Install Go from [https://go.dev/dl](https://go.dev/dl)  
2. Save the script as `url_check.go`  
3. Run the script with:

```bash
go run url_check.go
```

You’ll see output like:

```
🟢 https://google.com is UP
🔴 https://thissitedoesnotexist.com is DOWN: dial tcp ...
```

---

## 🚀 What I Learned

- Declaring slices and iterating over them  
- Using the `net/http` package to make requests  
- Handling timeouts with `http.Client`  
- Using `fmt.Printf` for formatted output  
- Managing errors without crashing the program

---

## 💡 Next Steps (Maybe!)

- Reading URLs from a file instead of hardcoding  
- Saving results to a CSV or JSON  
- Adding concurrency to speed up checks  
- Building a CLI interface with flags and help messages

---

## 👤 About Me

I’m Alvaro, a Computer Systems Engineering student at the University of Bath, diving into Go for automation and system programming.

---

> This is my first step into Go — simple, effective, and a foundation for bigger projects to come!
