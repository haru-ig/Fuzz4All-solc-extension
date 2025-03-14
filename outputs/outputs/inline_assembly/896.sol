pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal a;
    uint256 internal b;
    uint256 internal c;
    uint internal constant incrementDelay = 9000;
    uint256 count;
    mapping (address => uint) public balanceOf;
    mapping (uint => uint) public balances;
    constructor() public {
        a = 42;
        b = 42;
        c = 42;
        balances[msg.sender] = 42;
        count++;
    }
    function stop() public {
        c = 42;
        c = 0;
    }
    function increment() public returns(uint256) {
        a = a+b+c;
        c = a;
        b = a;
        return a;
    }
    function get_balance_of_msg_sender() public returns(uint) {
        return balanceOf[msg.sender];
    }
    function get_balances_of_msg_sender() public returns(uint256) {
        return balances[msg.sender];
    }
    function checkIfZero() public returns(bool) {
        if(a!=0 && b!=0) {
            return false;
        } else {
            return true;
