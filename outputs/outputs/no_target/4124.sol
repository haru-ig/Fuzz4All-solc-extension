pragma solidity ^0.8.0;
contract P4{
  mapping(uint => uint160) public p4;
  function f(uint x) public returns (uint256) { return p4[x]; }
}

pragma solidity ^0.8.0;
mapping (address => uint) internal userBalances;
contract A {
  event Log(uint);
  function g(uint x) public returns (uint y) {
    if(x > 27){
      Log(y);
    }
    return 0;
  }
}

pragma solidity ^0.8.0;
contract A2 {
  uint public counter = 0;
  mapping (address => uint) internal userBalances;
  event Log(uint);
  function g(uint x) public returns (uint y) {
    if(x > 27){
      Log(y);
    }
    return 0;
  }
}
pragma solidity ^0.8.0;
contract D {
  function d(uint x) public pure returns (uint4) {
    return 0;
  }
}
