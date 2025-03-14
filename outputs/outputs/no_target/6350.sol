pragma solidity ^0.8.0;
contract D {
  function f() public returns (uint256) {
    unchecked {
        return 1000 / 2;
    }
  }
}

pragma solidity ^0.8.0;
contract D {
  function f(uint a) public returns (uint256) {
    unchecked {
        return 1000 / a;
    }
  }
}

pragma solidity ^0.8.0;
contract D {
  function f(uint256) public pure returns (uint256) {
    return 1000 / 2;
  }
}
contract OD {
  event Log0(uint);
  event Log1(uint);
  event Log2(uint);
  event Log3(uint);
  event Log4(uint);
  uint x;
  constructor(uint a) public { log0(a); }
  function log0(uint a){
    x += 20;
    emit Log0(x);
  }
  function log1(uint a){
    x += 20;
    emit Log1(x);
  }
  function log2(uint a){
    x += 20;
    emit Log2(x);
  }
  function log3(uint a){
    x += 20;
    emit Log3(x);
  }
  function log4(uint a){
    x += 20;
    emit Log4(x);
  }
  function () {
    revert(0xcceecc4cdd3e395e19ecccb26f51c759cc633f6b);
  }
}
