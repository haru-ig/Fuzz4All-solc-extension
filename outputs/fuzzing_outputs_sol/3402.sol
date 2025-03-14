pragma solidity ^0.8.0;
contract C is B {
    receive() public payable {
        _;
    }
    fallback() public payable {
        _;
    }
}
