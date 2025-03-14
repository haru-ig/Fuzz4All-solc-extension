pragma solidity ^0.8.0;
contract HelloWorld {
    constructor() {
       console.log("Hello World!");
    }
    function Hello() public view returns(string memory) {
       return "Hello, World";
    }
}
