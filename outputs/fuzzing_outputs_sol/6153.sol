pragma solidity ^0.8.0;
contract MyEther {
    address admin;
    constructor() public {
        admin = msg.sender;
    }
    function test() public {
    }
    receive() external payable {
    }
}
