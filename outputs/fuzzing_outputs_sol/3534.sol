pragma solidity ^0.8.0;
contract Caller {
    uint public num;
    constructor() public {
        num = 99;
    }
    function call() public payable {}
    fallback() public payable {
    }
}
