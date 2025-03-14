pragma solidity ^0.8.0;
contract test42 {
    function test() public pure returns (uint256) {
      return uint256(uint(keccak256(abi.encodePacked(1, 23, 45))));
    }
}
