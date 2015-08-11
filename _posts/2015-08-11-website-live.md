---
layout: post
description: Setting the mood
title:  Introduction
---

To start, I'd just like to share what I'm doing with Go, namely making a basic web server. Go is Google's new language, and it makes writing web applications super easy, as well as providing incredible scaling. Parse recently [blogged](http://blog.parse.com/learn/how-we-moved-our-api-from-ruby-to-go-and-saved-our-sanity/) about how they migrated from Ruby to Go. 

> "After rewriting the EventMachine push backend to Go we went from 250k connections per node to 1.5 million connections per node without even touching things like kernel tuning."

This is actually what sparked my interest in learning Go. That being said, I'm still relatively new to web development, so I can't compare it to say something like Node.js or Python. Hopefully I'll be able to understand their pros and cons in more depth when I take Cloud Computing this Fall.

Let's get started. We'll be using [Negroni](https://github.com/codegangsta/negroni) as a middleware and [Mux](https://github.com/gorilla/mux) for routing. Start by grabbing these packages.

{% highlight go %}
go get github.com/codegangsta/negroni
go get github.com/gorilla/mux
{% endhighlight %}

We'll then create our server. Start by importing our dependencies.

{% highlight go %}
package main

import (
	"fmt"
	"net/http"

	"github.com/codegangsta/negroni"
	"github.com/gorilla/mux"
)
{% endhighlight %}

> Note: Go will actually yell at you for importing packages you don't use and refuse to compile. So this code as is will not compile. Go also has something called gofmt, which automatically formats your code so you don't have to worry about it!

Now in our `main()` function, we'll want to create a Negroni instance, and add some basic routes.
{% highlight go %}
func main() {
	router := mux.NewRouter()
	router.HandleFunc("/", homeHandler)

	n := negroni.Classic()
	n.UseHandler(router)
	n.Run(":8080")
}
{% endhighlight %}

Let's break this down. We first create a new mux router and then tell it call the function `homeHandler()` whenever someone visits our server at domain.com/. Then we create a "classic" Negroni instance and tell it to use the handler we just configured. Finally, we tell negroni to run on port 8080. Now we need to write the `homeHandler()` function. Since Negroni is a middleware, our `homeHandler()` needs to implement `http.HandlerFunc`. This means it needs to take in two arguments, a `http.ResponseWriter` and a `*http.Request`. We can then use the response writer to send data back to the client.

{% highlight go %}
func homeHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "There's nothing like 127.0.0.1")
}
{% endhighlight %}

And that's it! Just `go run server.go` and visit localhost:8080 and you should see your response. Mux has lots of fancy tools to streamline your routing, such as subdomains and HTTP methods. Check it out on the [docs](http://www.gorillatoolkit.org/pkg/mux).

{% highlight go %}
{% endhighlight %}