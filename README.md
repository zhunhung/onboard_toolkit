# Onboard Toolkit

Be it for work or personal, make setting up your new Mac OS Laptop a breeze!

## How to Use

1. Head to onboard toolkit UI [here](https://www.zhunhung.com/onboard-toolkit/).
2. Select the applications you want to install.
3. Click 'Generate Toolkit' and `onboard_toolkit.sh` will be downloaded automatically.
4. Run `bash onboard_toolkit.sh`, sit back and relax while it installs for you! 

## Contributing

A super important application is not on the list? Help to add it in by making a pull request to the `app.yaml` file.

For example:

```YAML
newapplicationname:
  name: [Application Name]
  url: [URL to Application zip/dmg file]
  type: [zip/dmg]
  category: [browser/ide/messenger/productivity]
```

And submit the pull request!

## To-Do

- [ ] Get latest app dmg/zip url automatically
- [ ] Add for Windows users

### License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
