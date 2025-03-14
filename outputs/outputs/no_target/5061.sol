pragma solidity ^0.8.0;
contract C40_bug443814169269 {
  uint64 b = 0;
  constructor () { b++; }
  function set() public { b--; }
}

pragma solidity ^0.8.0;

contract C40_bug429086217503 {
  function f(uint32 x) public view returns (uint32) {
    return (uint32(x) + uint32(uint88(uint160(uint32(65538))))) + uint32(uint160(uint88(uint160(uint32(uint88(uint16(uint32(100000000000000000000)))))))))) + uint32(uint32(type(uint88).max / uint32(100) / uint88(20000000000000000000000000000000000000000))));
  }
}
