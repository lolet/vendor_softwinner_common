#
# Copyright (C) 2015 Bartosz Jankowski
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
#

#!/bin/bash

function pack()
{
	PACK_PLATFORM="$(get_build_var TARGET_BOARD_PLATFORM)"
	$PACK_TOP/vendor/softwinner/common/pack.rb "--action" "pack" "--platform" "$PACK_PLATFORM" "$@"
}

function update_uboot()
{
	PACK_PLATFORM="$(get_build_var TARGET_BOARD_PLATFORM)"
	$PACK_TOP/vendor/softwinner/common/pack.rb "--action" "update_uboot" "--platform" "$PACK_PLATFORM" "$@"
}
