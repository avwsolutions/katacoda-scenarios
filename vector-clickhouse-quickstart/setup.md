### Install Vector using the installation script

`curl --proto '=https' --tlsv1.2 -sSf https://sh.vector.dev | bash`{{execute HOST1}}

### Check if Vector is installed correctly

`vector --version`{{execute HOST1}}

### Everybody needs a Hello World sample

`echo 'Hello world!' | vector --config .tutorial/sample_1.toml`{{execute HOST1}}
