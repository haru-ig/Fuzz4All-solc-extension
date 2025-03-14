pragma solidity ^0.8.0;
contract MyContract {
    string greet;
    constructor () {
        greet = "Hello, World!";
    }
    receive() external payable {}
    function getGreet() view public returns (string memory) {
        return greet;
    }
    function setGreet(string memory newGreet) public {
        greet = newGreet;
    }
}
