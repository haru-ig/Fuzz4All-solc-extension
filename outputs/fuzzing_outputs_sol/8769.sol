pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    mapping(address => uint) balanceOfRecords;
    constructor () { require(value > 0); }
    receive() external payable {
        delete balanceOfRecords[msg.sender];
    }
    function fallback() public pure { delete balanceOfRecords[msg.sender]; }
}
