pragma solidity ^0.8.0;
contract C {
    constructor() public payable {}
}
contract Caller is C {
    function f() public payable {}
}
