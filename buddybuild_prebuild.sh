#!/bin/bash

sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist

chruby 2.3.1

git clone git@github.com:CocoaPods/cocoadocs.org.git
cd cocoadocs.org
gem install bundler
bundle install
bundle exec rake swift_versions
bundle exec ruby cocoadocs.rb cocoadocs url https://raw.githubusercontent.com/CocoaPods/Specs/master/Specs/9/f/b/ReactiveSwift/3.0.0-rc.1/ReactiveSwift.podspec.json
