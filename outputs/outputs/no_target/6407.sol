pragma solidity ^0.8.0;
contract modifiedA is modifiedB {
  function f(uint8 a) public override returns (uint256 x) {
    x = 0;
    if( a % 2 > 1) {
      x = 3;
    }
  }
}

pragma solidity ^0.8.0;
contract modifiedB {
  modifier onlyModB() {
    if (msg.sender!= address(B())) msg.sender.transfer(1 ether);
    _;
  }
}
contract F {
  uint8 a;
  uint8 z;
  function f() public {
    uint8 x = g() % 2;
    if(z%2 == 1) {
      uint8 x = g() - z;
    } else {
      uint8 x;
    }
  }
  function g() public returns (uint8 x){
    if(a%2 == 1) {
      if(z % 2 == 1) {
        x = 1;
      } else {
        x = 0;
      }
    } else {
      if(z % 2 == 1) {
        x = 0;
      } else {
        x = 1;
      }
    }
  }
}

pragma solidity ^0.8.0;
contract F {
  uint8 a;
  uint8 z;
  function f() public {
    uint8 x = g() % 2;
    if(z%2 == 1) {
      uint8 x = g() - z;
    } else {
      uint8 x = 2;
    }
  }
  function g() public returns (uint8 x){
    if(a%2 == 1) {
      if(z % 2 == 1) {
        x = 1;
      } else {
        x = 0;
      }
    } else {
      if(z % 2 == 1) {
        x = 0;
      } else {
        x = 1;
      }
    }
  }
}

pragma solidity ^0.8.0;
contract F {
  uint8 a;
  uint8 z;
  function f() public {
