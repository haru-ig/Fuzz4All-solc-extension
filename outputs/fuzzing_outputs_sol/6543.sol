pragma solidity ^0.8.0;
contract C {
    constructor() {
    }
    fallback() {
        g();
    }
    function g() public payable {}
}
