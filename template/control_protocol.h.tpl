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

#ifndef %(protocol_name_upper)s_HPP
#define %(protocol_name_upper)s_HPP

#include "canbus_proto/%(car_type_lower)s.pb.h"
#include "canbus_common/protocoldata.hpp"

namespace wlne {
namespace autodriving {
namespace canbus {

class %(classname)s : public ProtocolData<%(car_type_cap)s> 
{
 public:
  static const uint32_t ID;

  %(classname)s();

  uint32_t GetPeriod() const override;

  void Parse(const std::uint8_t* bytes, int32_t length,
                     %(car_type_cap)s* chassis) const override;

  void UpdateData(uint8_t* data) override;

  void Reset() override;
%(declare_public_func_list)s

 private:
%(declare_private_func_list)s
%(declare_private_parse_func_list)s

 private:
%(declare_private_var_list)s
};

}  // namespace canbus
}  // namespace autodriving
}  // namespace wlne


#endif // %(protocol_name_upper)s_HPP