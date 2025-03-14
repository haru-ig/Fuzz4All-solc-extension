pragma solidity ^0.8.0;

contract Addressable is IAddressable {
  address payable public lastReturnAddress = 0x0;
  mapping(address => uint256) public lastCalledAddress;
}

pragma solidity ^0.8.0;

contract Addressable {
  address payable public lastReturnAddress = 0x0;
  mapping(address => uint256) lastCalledAddress;
}
