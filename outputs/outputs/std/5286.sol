pragma solidity ^0.8.0;
contract MyContract {
    string greet;
    uint public counter = 0;

    constructor (uint x) {
        greet = "Hello, World!";
        counter = x;
    }
    receive() external payable {}
    function sayHello() view public returns (string memory) {
        return greet;
    }
    function getCounter() view public returns (uint256 x){
        return counter;
    }
}
