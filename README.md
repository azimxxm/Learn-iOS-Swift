# Learn-iOS-Swift

# How to run CocoaPods on Apple Silicon (M1)

### 2022 October Update

## If you can use Homebrew to manage cocoapods.

```bash

# Uninstall the local cocoapods gem
sudo gem uninstall cocoapods

# Reinstall cocoapods via Homebrew
brew install cocoapods

```
EDIT: I recently disabled Rosetta, and Cocoapods runs just fine with the addition of the ffi gem.

For anyone else struggling with this issue, I just found a way to solve it. In addition to running terminal in Rosetta:

* Right-click on Terminal in Finder
* Get Info
* Open with Rosetta

### After doing this, cocoapods runs as expected.

```bash
sudo gem install ffi
```


## Configure Homebrew to not delete old versions

This behavior can be avoided by setting a variable ```bash export HOMEBREW_NO_INSTALL_CLEANUP=TRUE ``` in ~/.bashrc or ~/.zshrc (or specific to your shell).


That looks weird because usually homebrew does not actually delete old versions right away, it usually keeps them so you can switch back later. Except maybe you have been doing ```bash brew cleanup ```.



<a href="https://www.udemy.com/course/the-complete-ios-developer-course-with-swift/">the-complete-ios-developer-course-with-swift</a>

<a href="https://www.udemy.com/course/swiftui-masterclass-course-ios-development-with-swift/">swiftui-masterclass-course-ios-development-with-swift</a>

<a href="https://www.udemy.com/course/ios-13-app-development-bootcamp/">ios-13-app-development-bootcamp</a>