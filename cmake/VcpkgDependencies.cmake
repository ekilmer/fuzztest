# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cmake_minimum_required(VERSION 3.19)

# Find vcpkg-managed dependencies
find_package(absl CONFIG REQUIRED)
find_package(re2 CONFIG REQUIRED)
find_package(GTest CONFIG REQUIRED)
find_package(antlr4-runtime CONFIG REQUIRED)

if (FUZZTEST_BUILD_TESTING)
  find_package(protobuf CONFIG REQUIRED)
  find_package(nlohmann_json CONFIG REQUIRED)
endif ()

if (FUZZTEST_BUILD_FLATBUFFERS)
  find_package(flatbuffers CONFIG REQUIRED)
endif()