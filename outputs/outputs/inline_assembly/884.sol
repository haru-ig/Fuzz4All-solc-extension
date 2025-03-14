pragma solidity ^0.8.0;
contract Mutator {
   uint internal a;
    uint internal b;
   uint internal constant incrementDelay = 9000;
   bool internal isStopped;
   uint count;
   address public caller;
   mapping (address => uint) public balanceOf;
   mapping (address => uint) public newBalanceOf;
   uint internal expectedRevert;
   constructor() public {
        caller = msg.sender;
   }
   function increment_A() public returns (uint) {
        a = a + 1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
        count = count + 1;
        return (a);
    }
   function increment_B() public returns (uint) {
        b = b + 1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + b;
        count = count + 1;
        return b;
    }
   function get_new_balance_of(address c) public returns (uint256) {
       return newBalanceOf[c];
   }
   function get_balance_of(address c) public view returns (uint256) {
       return balanceOf[c];
   }
   function stop() public {
        caller =
