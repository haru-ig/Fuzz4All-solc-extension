pragma solidity ^0.8.0;

function add(uint x, uint y) internal pure returns (uint) {
  bytes32 x2 = bytes32(x);
  bytes32 y2 = bytes32(y);
  uint sum = uint(uint256(x2) + uint256(y2));
  return sum;
}


contract test {
  function test() external {}
  function test2() public {
    assembly {

      let result := add(1, 2);
      let result2 := add(input, 0);
      let result3 := add(0x3f, 0xf);
    }
  }
}
contract test {
  constructor() external {}
  function test() public {}
  function test2() public payable {}
}
contract test {
  constructor() external {}
