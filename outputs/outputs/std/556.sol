pragma solidity ^0.8.0;
contract HelloWorld {
    constructor() {
       address payable(msg.sender);
    }
    function hey() public pure returns(string memory) {
       return "Hello, World";
    }
}
