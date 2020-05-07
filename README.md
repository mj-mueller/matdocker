# MatDocker - Memory Analyzer Tool Docker Container
The container processes the heapdump in the folder defined in the ```docker run``` command. Computed indices are compressed into ```indices.tar.gz``` and the reports "org.eclipse.mat.api:overview", "org.eclipse.mat.api:suspects" and "org.eclipse.mat.api:top_components" are created as zip archives.

By using this container heapdumps on remote machines can be easily processed and the results available in a more efficient way.
## Build

Use:
```docker build --tag matdocker .```

## Run
Use:
```docker run -v <folder to heapdump>:/mat/heapdump matdocker```
