pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    constructor () { require(value > 0); }
    function() external payable {}
    receive() external pure { }
}
