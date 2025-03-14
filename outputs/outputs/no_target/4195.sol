pragma solidity ^0.8.0;
contract P12a {
  function i() public pure returns (uint256, uint256, uint256) {
    return (1,2,3);
  }
}

contract P12b {
  function i() modifies P11 i() pure public returns (uint256, uint256, uint256) {
    return (1,2,3);
  }
}

contract P12c {
  function i() modifies P12a with modifier() pure public returns (uint256, uint256, uint256) {
    return (1,2,3);
  }
}
contract P13 {
  function i() modifies P12c with modifier() pure public returns (uint256, uint256, uint256) {
    return (1,2,3);
  }
}
contract P14 {
  function i() modifies P13 with modifier() pure public returns (uint256, uint256, uint256) {
    return (1,2,3);
  }
}
contract P15 {

  uint i;

  constructor() public {
    i = P15.i();
  }

  modifier mod1() {
    i <=1;
    _;
  }

  modifier mod2() {
    i >=1;
    _;
  }

  function f15() view public mod1 (uint256) returns (uint256) {
    return mod1(i);
  }

  function f16() view public mod2 (uint256) returns (uint256) {
    return mod2(i);
  }
}
pragma solidity ^0.8.0;
contract P16 {
  struct Data {
    uint256 a;
    uint256 b;
    uint constant c = 1;
  }

  uint public a;
  Data public d;

  constructor(uint arg) public {
    a = arg;
    d = Data(1,2);
  }


  function m1(uint256 x, uint256 y) view public returns (uint256) {
    return x + y;
  }


  function fn17(uint128 x, Data memory) public returns (uint) {
    uint256 result;
    result = m1(x, x + 1) + m1(a, x + 2) +
                (mod1(1050, 43255) + mod1(1300, 45
