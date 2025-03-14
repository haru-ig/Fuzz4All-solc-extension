pragma solidity ^0.8.0;
contract HelloWorld {
    address public owner;
    function hey() public pure returns(string memory) {
       return "Hello, World!";
    }
    function helloName(string memory name) public pure returns(string memory) {
       return "Hello, " + name;
    }
    function HelloName() public pure returns(string memory) {
       return "Hello, World!";
    }
}
