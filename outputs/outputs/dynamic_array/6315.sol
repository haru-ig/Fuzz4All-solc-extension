pragma solidity ^0.8.0;
contract c {
  function test(uint256[] memory a, uint256[] calldata b) public pure returns (uint256)
  {
    for(uint256 i=0; i<b.length; i++) a[i] = 2;
    return c.get(2);
  }
}
