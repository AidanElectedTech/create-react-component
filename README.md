# create-react-component

A script which quickly creates a blank React component and the supporting files

### Installation

```shell
git clone https://github.com/aidanalexander/create-react-component
cd create-react-component
sudo chmod +x install.sh
./install.sh
```

### Options

```shell
-p  create propTypes file and import into your component
-s  create styles file and import into your component
-r  create redux file and import into your component
```

### Usage

```shell
create-react-component MyComponent
create-react-component -s MyComponentWithStyles
create-react-component -p MyComponentWithProps
create-react-component -r MyComponentWithRedux
create-react-component -spr MyComponentWithAll
```
