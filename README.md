# videoconf-toolbox
a [toolbox](https://github.com/containers/toolbox) for video conferencing software.

Contains:
- zoom
- ringcentral (a zoom-a-like)

## usage instructions

Set up the toolbox:
```
make # downloads the latest rpms and creates a toolbox with them installed
```

Use the toolbox:
```
toolbox run -c vctoolbox zoom
toolbox run -c vctoolbox ringcentral
```

## updating

Clean up current files and rebuild toolbox:
```
make clean
make
```

