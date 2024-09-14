/******************************************************************************
 * Copyright 2024 The Wuling Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/


#include "%(car_type_lower)s_protocol/%(protocol_name_lower)s.hpp"
#include "canbus_common/byte_utils.hpp"
#include "canbus_common/canbus_consts.hpp"

namespace wlne {
namespace autodriving {
namespace canbus {


const uint32_t %(classname)s::ID = 0x%(id_upper)s;

// public
%(classname)s::%(classname)s() { Reset(); }

uint32_t %(classname)s::GetPeriod() const {
  // TODO(All) :  modify every protocol's period manually
  static const uint32_t PERIOD = 20 * 1000;
  return PERIOD;
}

void %(classname)s::Parse(const std::uint8_t* bytes, int32_t length,
                         %(car_type_capitalize)s* chassis) const {
%(set_parse_var_to_protocol_list)s
}

void %(classname)s::UpdateData(uint8_t* data) {
%(set_private_var_list)s
}

void %(classname)s::Reset() {
  // TODO(All) :  you should check this manually
%(set_private_var_init_list)s
}
%(set_func_impl_list)s
%(set_parse_func_impl_list)s
}  // namespace canbus
}  // namespace autodriving
}  // namespace wlne
