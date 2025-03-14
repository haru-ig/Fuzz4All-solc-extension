pragma solidity ^0.8.0;
contract test {
    address owner;
    address payable user;

    constructor() public {
        owner = msg.sender;
    }
    function deposit() external payable {
        user = msg.sender;

        console.log("User payable address: " + msg.sender);
    }
    function withdraw() external {
        user.transfer(address(1));
        console.log("User deposited at " + block.timestamp + ": " + msg.sender);
    }




}
