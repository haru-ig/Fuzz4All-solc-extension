pragma solidity ^0.8.0;
contract HelloWorld {
    uint256 value;
    function sayHelloWorld() public pure returns (uint256) {
        return value;
    }
    function setHelloWorld(uint256 value2) public {
        value = value2;
    }
}
