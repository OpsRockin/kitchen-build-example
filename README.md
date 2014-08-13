# kitchen-build-example (jemalloc)

Example of package building with test-kitchen.

## Requirements

- VirtualBox
- Vagrant

## Setup

```
$ bundle
```

## Usage

### Build RPM and Deb package.

```
$ kitchen test build
$ ls pkg
jemalloc_3.x.x.deb jemalloc_3.x.x.rpm
```

### Test with Serverspec

```
$ kitchen verify

...

Package "jemalloc"       
/tmp/busser/suites/serverspec/localhost/jemalloc_spec.rb:4: warning: class variable access from toplevel       
  should be installed       
       
Command "/usr/local/bin/jemalloc.sh env"       
  should return stdout /^LD_PRELOAD=.+libjemalloc.+/      
```

