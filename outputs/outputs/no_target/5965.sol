pragma solidity ^0.8.0;
contract C2 {

  function f1(uint a, uint b) public pure returns (uint) {
    return a + b;
  }
}

pragma solidity ^0.8.0;
contract C2 {
    function f1(uint a, uint b) public pure returns (uint) {
      return a + b;
    }
    function f2(uint a) public pure returns (bool) {
        return false;
    }
}
