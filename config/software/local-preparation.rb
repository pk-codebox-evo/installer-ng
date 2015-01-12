#
# Copyright 2012-2014 Chef Software, Inc.
# Copyright 2015 Scalr, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name 'preparation'
description 'the steps required to prepare the build'
default_version '1.0.0'

build do
  block do
    %w{embedded/lib embedded/bin bin}.each do |dir|
      command "mkdir -p #{install_dir}/#{dir}"
      command "touch -a #{install_dir}/.gitkeep"
    end
  end
end