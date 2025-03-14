pragma solidity ^0.8.0;
contract S2 {
  function g(uint y) public returns (uint) { return s1 *= y; }
}

pragma solidity ^0.8.0;
contract S3 {
  function g(uint y) [s1] public returns (uint z) { return s1 /= y; }
}

contract S4 {
  function g(uint y) public returns (uint s2) {
    s1 /= y
  }
}
