pragma solidity ^0.8.0;
contract Caller {
    address payable addressSelf;
    address payable addressCaller;
    constructor() { addressSelf = address(this); addressCaller = msg.sender; }
    fallback (string memory _data) public payable {
      addressCaller.transfer(msg.value);
    }
}
