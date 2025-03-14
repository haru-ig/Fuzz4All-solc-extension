pragma solidity ^0.8.0;
contract MyContract {
    string public greet;
    event Message (string indexed _message);
    constructor(string memory data) {
        greet = data;
        emit Message("Hello, World!");
    }
    fallback() external payable {}
    function sayHello() view public returns (string memory) {
        return greet;
    }
    function setGreet(string memory newGreet) public {
        greet = newGreet;
        emit Message(newGreet);
    }
}
