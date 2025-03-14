pragma solidity ^0.8.0;
contract Equivalent {
    uint256 internal a = 0;
    uint256 internal b ;
    uint256 internal internalVar;
    uint internal constant incrementDelay = 9000;
    uint256 count;
    mapping (address => uint) public balanceOf;
    mapping (address => uint) public newBalanceOf;
    constructor() public {
        a = 42;
        a = 0;
        internalVar = 43;
        internalVar = 0;
    }
    function stop() public {
        a = 42;
        a = 0;
        internalVar = 43;
        internalVar = 0;
    }
    function increment_A() public returns(uint256) {
        return a+1;
    }
    function increment_B() public returns(uint) {
        return b+1;
    }
    function increment_AandB() public returns(uint256) {
        return a+b+1;
    }
    function get_balance_of_msg_sender() public returns(uint) {
        return balanceOf[msg.sender];
    }
    function get_new_balance_of_msg_sender() public returns(uint256) {
