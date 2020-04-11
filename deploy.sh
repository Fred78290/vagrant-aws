#!/bin/bash
vagrant plugin uninstall vagrant-aws
rake build
vagrant plugin install pkg/vagrant-aws-0.7.3.gem