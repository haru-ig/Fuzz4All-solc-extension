pragma solidity ^0.8.0;
contract mutators_v11 is mutators_v10
{
   constructor(uint) public{
      emit emitsEvent();
   }
}
