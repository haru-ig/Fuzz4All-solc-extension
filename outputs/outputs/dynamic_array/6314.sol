pragma solidity ^0.8.0;
contract c {
  event Test(uint256[3] indexed, bytes32 indexed, uint256 indexed);
  function get(uint256 i, bytes32 b0, uint256 b1) public pure returns (uint256, uint256, bytes32, bytes32) { Test(i, b0, b1); return (i, i, b0, b0); }
}








pragma solidity ^0.8.0;
contract c {
    uint a = 1;
    bytes32 b = 2;
    function get(uint256 i, bytes32 b0, uint256 b1) public pure returns (uint256, uint256, bytes32, bytes32) { get(); a[i][b0][b1] = 1; return (i, i, b0, b0); }
}
