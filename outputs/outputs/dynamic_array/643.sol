pragma solidity ^0.8.0;
contract test58 {
  uint32[42] private d58;
  function test() public returns (uint256) {
    return d58[0];
  }
}

pragma solidity ^0.8.0;
contract test59 {
  uint32[42] private d59;
  uint32[] private f59;
  uint32[] public g59;
  function test() public returns (uint256) {
    return (d59[0]);
  }
}

pragma solidity ^0.8.0;
contract test60 {
  uint32[42] private d60;
  uint32[42] private f60;
  uint32[42] private g60;
  function test() public returns (uint256, uint256) {
    uint32 c60 = d60[0];
    return (c60, c60);
  }
}
pragma solidity ^0.8.0;
contract test61 {
  uint32[79] private d61;
  uint32[17] private f61;
  uint128[86] private g61;
  function test() public returns (uint256, uint256, uint256, uint256) {
    uint128 c61 = d61[0];
    uint256 b61 = d61[0];
    uint128 c612 = (d61[0]);
    uint256 b612 = (d61[0]);
    uint256 b61n = (d61[0]);
    uint128 c61n = (d61[0]);
    uint32 b613 = (d61[0]);
    uint256 b614 = (d61[0]);
    uint128 c613 = (d61[0]);
    uint32
