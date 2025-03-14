pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal a = 0;
    uint256 internal b ;
    uint256 internal internalVar;
    uint internal constant incrementDelay = 9000;
    uint256 count;
    mapping (address => uint) public balanceOf;
    mapping (address => uint) public newBalanceOf;
    constructor() public  {}
    function stop() public  {}
    function increment_A() public returns(uint256)  {
            a = a+1;
            newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
            return a;
        }
    function increment_B() public returns(uint)  {
            b = b+1;
            newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + b;
            return b;
        }
    function increment_AandB() public returns(uint256)  {
            a = a+b+1;
            b = b+1;
            newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a + b;
            return a + b;
        }
    function get_balance_of_msg_sender() public returns(uint)
