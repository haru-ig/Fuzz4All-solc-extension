pragma solidity ^0.8.0;
contract E {
  function foo() private pure returns (uint16) {
    return 0;
  }
  function change(uint b) public returns (uint16) {
    return foo();
    b = 0;
  }
}


contract G {
  function foo() private pure returns (uint16) {
    return 0;
  }
  function change(uint b) public returns (uint16) {
    return foo();
    b = 0;
  }
}
