pragma solidity ^0.8.0;
contract Main {

   uint total = 0;
   function inc_total(uint x) public pure {
        total += x;
   }
   function sub_total(uint x) public pure {
       total -= x;
   }
}
