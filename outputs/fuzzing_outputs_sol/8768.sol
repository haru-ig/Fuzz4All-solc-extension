pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    constructor () { require(value > 0); }
    receive() external payable {}
    function fallback() public pure { }
}
