pragma solidity ^0.8.0;
interface IBytes4BytesArray {
  function doSub(uint256 a, bytes calldata b, uint256 b_length) external;
  function doShiftLeft(bytes4 a, uint256 b, uint256 b_length) external;
  function doRightShift(uint256 a, bytes20 b, uint256 b_length) external;
}

pragma solidity ^0.8.0;
interface IBytes4BytesArray {
  function doAssign(bytes a, uint256 a_length, bytes1 b, uint256 b_length, bytes4 d, uint256 d_length) external;
  function doAssign(uint256 a, bytes1 b, uint256 b_length, bytes4 d, uint256 d_length) external;
  function doAssign(bytes4 a, uint256 a_length, bytes4 b, uint256 b_length, bytes4 d, uint256 d_length) external;
  function doAssign(uint256 a, bytes4 b, uint256 b_length, bytes4 d, uint256 d_length) external;
}
