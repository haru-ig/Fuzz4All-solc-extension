pragma solidity ^0.8.0;
contract Test53Mutant {
   uint[15] private m;


   uint[] public arrayNotWorking;
   uint[] public arrayAndWorking;

   function f() public{
      arrayAndWorking.push(m[6] + 1);
      arrayAndWorking[1]=2;
      arrayAndWorking[arrayNotWorking.length++] = 4;
      arrayAndWorking.push(4567);
   }
}
