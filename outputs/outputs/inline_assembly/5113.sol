pragma solidity ^0.8.0;
struct S { uint m; }
contract C {
  S stored;
  S calldata initial;
  uint public counter = 0;
  constructor(uint _initialValue) public {
    stored = S(_initialValue);
    initial = stored;
  }

  function set(S _s) external returns (address) {
    stored = _s;
    return address(stored);
  }



  function setByCaller(address payable _to, uint _initialValue) public {
    to = _to;
    stored = S(_initialValue);
  }
  function check() public view returns (uint) {
    return counter;
  }


  function setByCallerFromTarget(uint _initialValue) public {
    to = msg.sender;
    stored = S(_initialValue);
  }
}
