pragma solidity ^0.8.0;
contract C {
    constructor() {
    }
    function g() public payable {}
    receive () external payable {
        address addr = msg.sender;
    }
}
