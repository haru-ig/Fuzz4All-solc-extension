pragma solidity ^0.8.0;
contract HelloWorld is HelloWorld {
    function sayHelloWorld() public pure returns (string memory) {
        return "The World";
    }
}
