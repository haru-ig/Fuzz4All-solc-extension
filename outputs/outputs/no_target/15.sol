pragma solidity ^0.8.0;
contract HelloWorld {
    function sayHelloWorld() public pure returns (string memory) {
        return "hello world";
    }
    function sayHelloWorld(string memory text) public pure returns (string memory) {
        return text;
    }
    function sayHelloWorld(uint num) public pure returns (uint) {
        return num;
    }
    function sayHelloWorld(uint16 num) public pure returns (uint16 num16) {
        return num;
    }
    function sayHelloWorld(address addr) public pure returns (address addr1) {
       return addr;
    }
}

contract MyMath {
    uint value = 3 ** 10;
    function add(uint x, uint y) public pure returns (uint) {
        return x + y;
    }
    function subtract(uint x, uint y) public pure returns (uint) {
        return x - y;
    }
    function multiply(uint x, uint y) public pure returns (uint) {
        return x * y;
    }
    function divide(uint x, uint y) public pure returns (uint) {
        if (y == 0) {
            revert("divided by zero");
        }
        return x / y;
    }
    function modulo(uint x, uint y) public pure returns (uint) {
        return x % y;
    }
    function greaterThan(uint x, uint y) public pure returns (bool) {
        return x > y;
    }
    function greaterThanEqual(uint x, uint y) public pure returns (bool) {
        return x >= y;
    }
    function lessThan(uint x, uint y) public pure returns (bool) {
        return x < y;
    }
    function lessThanEqual(uint x, uint y) public pure returns (bool) {
        return x <= y;
    }
    function equal(uint x, uint y) public pure returns (bool) {
        return x == y;
    }
    function notEqual(uint x, uint y) public pure returns (bool) {
        return x!= y;
    }
}
