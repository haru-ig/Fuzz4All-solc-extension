pragma solidity ^0.8.0;
contract Caller {
    address payable contractAddress;

    constructor() public payable {
        contractAddress = msg.sender;
    }

    fallback() public payable {
        if (msg.value > 0) {
            contractAddress.transfer(address(this).balance);
        }
    }
}
