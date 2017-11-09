#!/bin/bash

sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
sudo mdutil -a -i on

chruby 2.3.1

git clone git@github.com:CocoaPods/cocoadocs.org.git
cd cocoadocs.org
gem install bundler
bundle install

echo "Swift Versions..."
bundle exec rake swift_versions

echo "."
echo "."

echo "Generating doc"
bundle exec ruby cocoadocs.rb cocoadocs url https://raw.githubusercontent.com/CocoaPods/Specs/master/Specs/9/f/b/ReactiveSwift/3.0.0-rc.1/ReactiveSwift.podspec.json
