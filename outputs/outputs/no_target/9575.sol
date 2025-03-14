pragma solidity ^0.8.0;
address _Interface32_v3(bytes memory _data)  public {
_Interface32_v3 _Interface32_v3_instance = new _Interface32_v3();
bool _reverted = _Interface32_v3_instance.foo3(_data);
assert(_reverted!= true);
delete _Interface32_v3_instance;
}

pragma solidity ^0.8.0;
contract Interface31_v3_v2 is _Interface32_v3 {
  function foo2(bytes memory _data)  public {}
  function foo3(bytes memory _data) public returns (bool) {
    return _Interface32_v3.foo3(_data);
  }
}
contract Interface32_v3_v2 is _Interface32_v3 {
  function foo2(bytes memory _data) public {}
  function foo3(bytes memory _data) public returns (bool) {
    return _Interface32_v3.foo3(_data);
  }
  function foo4(bytes memory _data) public returns (bool) {
    _Interface32_v3.foo4(_data);
  }
}<fim_middle>contract Interface32_v3_v2 is _Interface32_v3 {
  function foo4(bytes memory _data) public {}
}
contract Interface32_v3_v3 is _Interface32_v3 {
  function foo4(bytes memory _data) public {}
}
contract Interface32_v3 is IInterface32_v3 {
}
contract Interface33_v3 is _Interface32_v3 {
}
contract Interface33_v0 is _Interface32_v3 {
}


pragma solidity ^0.8.1;
contract Contract31_v3_v2 is _Interface32_v3 {
  address _Interface32_v3;
  address[3] public _addresses;
  bytes public _data;
  int public _byte;
  uint public _ubyte;
  uint8 public _u8;
  uint16 public _u16;
  uint32 public _u32;
  uint64 public _u64;
  int public _int;
  uint public _uint;
  uint8 public _u8_0;
  uint16 public _u16_0;
  uint32 public _u32_0;
  uint64 public _u64_0;
  int public _int_0;
  uint
