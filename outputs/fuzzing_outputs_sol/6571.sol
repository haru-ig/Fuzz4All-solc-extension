pragma solidity ^0.8.0;
contract Caller {
    address private constant fallbackAddress = address(0xDEAD);
    address private contractAddress;
    function receive() public payable {
        contractAddress.transfer(msg.value);
    }
}
