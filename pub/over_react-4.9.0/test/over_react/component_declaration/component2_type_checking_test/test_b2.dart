// Copyright 2016 Workiva Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//library test_component2.test_b;

import 'package:over_react/over_react.dart';

part 'test_b2.over_react.g.dart';

@Factory()
UiFactory<TestB2Props> TestB2 =
    _$TestB2; // ignore: undefined_identifier, invalid_assignment

@Props()
class _$TestB2Props extends UiProps {}

@Component2()
class TestB2Component extends UiComponent2<TestB2Props> {
  @override
  render() => Dom.div()();
}
