pragma solidity ^0.8.0;
contract HelloWorld {
    string helloWorld;
    function sayHelloWorld() public returns (string memory) {
        return helloWorld;
    }
    function setHelloWorld(string memory value) public {
        helloWorld = value;
    }
}
