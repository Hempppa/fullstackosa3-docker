This program was originally made during [this fullstack development course](https://fullstackopen.com).


Because this program uses an online database (mongodb atlas) as memory it will only partially work without a dedicated database set up.

If you have/want to make a database its free but arduous. If you have a database ready you need to give a "connection string" from the website as an eviormental variable named MONGODB_URI.

Without this the frontend will still show up at the specified port but will basically have no functionality.

With docker you only need to provide a name for the image to setup the program

```
docker build . -t ${name}
```
Now you can run without a database by giving a open PORT number

```
docker run -it -p 127.0.0.1:${PORT}:3001 ${name}
```
Or with a database you need the CONNECTION_STRING which can be found from a connect button on the mongodb atlas website on the cluster

```
docker run -it -e MONGODB_URI=CONNECTION_STRING -p 127.0.0.1:${PORT}:3001 ${name}
```
The connection string should look something like this for a cluster named cluster0 mongodb+srv://${user}:${user_access_password}@cluster0.p8ooghq.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0

Now you should actually be able to add, filter and remove acceptable name/number combinatios.


Alternatively as per exercise 1-16 it can be found on render
