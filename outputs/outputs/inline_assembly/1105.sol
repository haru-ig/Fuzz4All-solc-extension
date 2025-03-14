pragma solidity ^0.8.0;
contract MutatedContract {
  uint y;
  constructor () {
    y = 5;
  }
  function change() internal {
    y = 6;
  }
}
"use snt";
pragma solidity ^0.8.11;
contract MutatedContract {
  uint z;
  uint private myVariable;
  modifier only_once() {
    assembly {
      if(myVariable == 0) {
        mstore(0x40, 0x60)
        mstore(0x40, 0x60)
      }
      myVariable := add(myVariable, 1)
    }
    _;
  }
  constructor () public {
    z = 4;
  }
  function change() public view only_once {
    z = 6;
  }
  function my_getter() public view returns (uint) {
    return myVariable;
  }
  function change_value(uint _a) public only_once {
    myVariable = _a;
  }
}
