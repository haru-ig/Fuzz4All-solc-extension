pragma solidity ^0.8.0;
contract HelloWorld {
    string helloWorld;
    function sayHelloWorld(string calldata value) public pure returns (string memory) {
        return helloWorld + " " + value;
    }
}
