pragma solidity ^0.8.0;
contract mutated {
  uint8 private _number;
  bool private __initialized;
  mapping(bytes4 => bool) internal __verifies;
  constructor() {
    __initialized = true;
    __verifies[keccak256("incrementNumberA")] = true;
    __verifies[keccak256("incrementNumberB")] = true;
    __verifies[keccak256("incrementNumberC")] = true;
  }
  function verify(bool init, bytes4 _msg, address _addr) public pure {
    assert(init === __initialized && __verifies[_msg]
            && msg.sender == _addr);
  }
  function incrementNumber(bytes4 _msg) public  {
    verify(__initialized, _msg, msg.sender);
    _incrementNumber(_msg);
  }
  function _incrementNumber(bytes4 _msg) private {
    verify(__initialized, _msg, msg.sender);
    switch (_msg) {
      case 0x00:
        _number += 1;
        break;
      case 0x01:
        _number -= 1;
        break;
      case 0x02:
          __number -= 1;
          break;
    }
  }
}

mutated mutated = new mutated();
mutated.incrementNumber(0x00);
mutated.incrementNumber(0x02);

mutated.incrementNumber(0x01);
