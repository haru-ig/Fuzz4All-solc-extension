pragma solidity ^0.8.0;
interface IBytes2BytesArray {
  function doAppend(uint256 a, bytes calldata b, uint256 b_length) external;
  function doRemove(uint256 a, bytes calldata b, uint256 b_length) external returns(bool);
  function doUpdate(uint256 a, bytes calldata b, bytes calldata b_) external;
  function doGet(uint256 a, bytes calldata b, uint256 b_length) external returns(bool);
}

pragma solidity ^0.8.0;
contract IBytes2BytesArray {
  function doAppend(uint256 a, bytes calldata b, uint256 b_length) external;
  function doRemove(uint256 a, bytes calldata b, uint256 b_length) external returns(bool);
  function doUpdate(uint256 a, bytes calldata b, bytes calldata b_) external;
  function doGet(uint256 a, bytes calldata b, uint256 b_length) external returns(bool);

}



pragma solidity ^0.8.0;

import "./Bytes2BytesArrayInterface.sol";


contract Array is Bytes2BytesArrayInterface {


    uint256[] private data;


    constructor(uint256 length) {
        data = new uint256[](length);
    }

function doAppend(uint256 a, bytes calldata b, uint256 b_length) external {
  bytes memory old_data = new bytes(data[4]);
  (data[4], data[1], data[2]) = (data[1], data[2], data[3]);
  memory new_data = new bytes(keccak256(abi.encodePacked(data, b, b_length)));

  uint256 count = b_length / 32;
  uint256 carry = 0;
  for (uint256 i = 0; i < count; i ++) {
    for (uint256 j = 0; j < 32/2; j ++) {
      if (carry > uint8(data[0])) {
        new_data[6 + 2*i + j] =  255;
        carry = carry - 256;
      } else if ((carry == 0 && new_data[6 + 2*i + j] == 0) || (carry > uint8(old
