pragma solidity ^0.8.0;
contract MyContract {
    uint public counter;
    constructor(uint x) {
        counter = x;
    }
    receive() payable {}
    function sayHello() view public returns (string memory) {
        return "Hello";
    }
    function getCounter() view public returns (uint256 x){
        return counter;
    }
    function setCounter(uint x) public {
        counter = x;
    }
}
