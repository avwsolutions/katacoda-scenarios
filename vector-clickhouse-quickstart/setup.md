## Install bc package prerequisite for Vector
`apt-get install bc -y`{{execute HOST1}}
### Install Vector using the interactive installation script

`curl --proto '=https' --tlsv1.2 -sSf https://sh.vector.dev | bash`{{execute HOST1}}

Please click 'y' to continue the installation.
### Check if Vector is installed correctly

`source ~/.profile`{{execute HOST1}}
`vector --version`{{execute HOST1}}ß

### Everybody needs a Hello World sample

`echo 'Hello world!' | vector --config ~/sample_1.toml`{{execute HOST1}}
### Now we want JSON using the demo_logs sample package

`vector --config ~/sample_2.toml`{{execute HOST1}}
