pragma solidity ^0.8.0;
contract Modul2
{
   uint public constant test = 20;
   function solve() public returns (uint) {
       uint r;
       if (test == 100) {
           r = 1;
           return test;
       } else {
           return 0;
       }
   }
}
