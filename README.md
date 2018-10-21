## Getting Started ##

### Installing gems ###
To install gems type:
```shell
bundle install
```

### Run tests in DEV###
Type this in the tests folder:
```shell
cucumber -p pretty -p html -p dev
```
### Run tests in HMG ###
Type this in the tests folder:
```shell
cucumber -p pretty -p html -p hmg
```

### Run with Rake###
Type this in the tests folder:
```shell
rake test_dev
rake test_hmg
```

### Json Report###
Type this in the tests folder:
```shell
cucumber -p json -p hmg
```

### Run with tags###
Type this in the tests folder:
```shell
cucumber --tags @executa_post
cucumber --tags @executa_get
```
