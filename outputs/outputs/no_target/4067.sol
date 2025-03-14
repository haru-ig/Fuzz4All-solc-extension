pragma solidity ^0.8.0;
interface IS1 {
  function f(uint) external returns (uint);
}
pragma solidity ^0.8.0;
contract S2 {}

pragma solidity ^0.8.0;
contract S3 {
  uint public s1;
  function g(uint z) public returns (uint) { return s1 /= z; }
}
