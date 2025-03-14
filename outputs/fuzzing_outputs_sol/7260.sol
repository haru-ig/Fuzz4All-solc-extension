pragma solidity ^0.8.0;
contract Recipient {
    address payable public receiver;
    constructor(address _receiver) {
        receiver = _receiver;
    }
    receive() external payable {}
    function example3() public payable {
        receiver.call{value: msg.value}("");
    }
}
