pragma solidity ^0.8.0;
contract HelloWorld {
    string public helloWorld;
    function sayHelloWorld() public view returns (string memory) {
        return helloWorld;
    }
    function setHelloWorld(string memory value) public {
        helloWorld = value;
    }
}
