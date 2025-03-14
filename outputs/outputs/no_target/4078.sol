pragma solidity ^0.8.0;
contract S4 {
  uint public s4;
  function h(uint x) public returns (uint) { return s4 = x ^ s3; }
}

pragma solidity ^0.8.0;
contract S5 {
  uint public s5;
  function h(uint x) public returns (uint) { return s5 = s3 - x; }
}
pragma solidity ^0.8.0;
contract S {
  function call() public pure returns (uint) {
    uint x = 0; return x + 1;
  }
}
