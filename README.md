# spock-blog

Learning App.

I'm using stack because that's what the community recommended.

### Setup
- Clone the project.
- Run `stack build --fast --pedantic` to install dependencies.
- Run `stack build --fast --pedantic --file-watch` to use watcher.
- To execute the project run: `stack exec spock-blog-exe`

### Routes
```
(public)  GET    /login
(public)  POST   /login
(public)  GET    /logout
(public)  POST   /logout
(public)  GET    /register
(public)  POST   /register
(public)  GET    /posts
(private) GET    /posts/new
(private) GET    /posts/1/edit
(private) POST   /posts
(private) PUT    /posts/1
(public)  GET    /posts/1
(private) DELETE /posts/1
```

### Decision making:

- Spock - I wanted something lightweight.
- Lucid - Looks like the best option.
- Postgres - ??

### Resources

- https://github.com/agrafix/funblog
- https://www.spock.li/blog/
