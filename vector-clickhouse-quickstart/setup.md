## Install bc package prerequisite for Vector
`apt-get install bc -y`{{execute HOST1}}
### Install Vector using the installation script

`curl --proto '=https' --tlsv1.2 -sSf https://sh.vector.dev | bash`{{execute HOST1}}

### Check if Vector is installed correctly

`source ~/.profile`{execute HOST1}}
`vector --version`{{execute HOST1}}

### Everybody needs a Hello World sample

`echo 'Hello world!' | vector --config ~/sample_1.toml`{{execute HOST1}}
