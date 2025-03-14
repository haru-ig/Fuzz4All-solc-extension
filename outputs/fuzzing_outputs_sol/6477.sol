pragma solidity ^0.8.0;
contract C {
    function bar() public payable receive (uint value) {

    }
}
contract B {
    function bar() public payable receive (string memory data) {

    }
}
