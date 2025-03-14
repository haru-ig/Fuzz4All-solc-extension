pragma solidity ^0.8.0;
contract MutateWithSemanticModul
{
   uint public constant test = 100;
   bytes32 public constant test2 = keccak256(abi.encodePacked(test));
   uint public constant test3 = 100;
   uint public constant test4 = 100;
   uint internal constant test5 = 10;
   constructor () {
       assembly {
           let m := test + test3
       }
   }
}

pragma solidity ^0.8.0;
contract UseInlineAssemblyInManyDifferentWay
{
   uint internal constant test = 1;
   uint16 public constant test2 = 1 as uint16;
   uint public constant test3 = 100;
   uint public constant test4 = 40;
   uint public constant test5 = 40;
   uint internal constant test6 = 10;
   uint public constant test7 = 420;
   bytes32 test8;
   constructor() public {}
   function getTest() public view returns (uint) {
       uint r;
       if (test == 0) {
           return 1;
       }
       if (test == 1) {
           r = 2;
       }
       else {
           uint i;
           for (i = test; i < test3; i++) {
               if (i == test4) { continue; }
               r = -1;
               if (i == test5) { continue; }
           }
       }
       switch (r) {
           case 0:
               return 3;
           case 1:
               return 4;
           case 2:
               return 5;
           default:
               return 6;
       }
   }
}

pragma solidity ^0.8.0;
contract TestInlineAssemblyPerformance
{
   uint public constant test1 = 100;
   uint public constant test2 = 10;
   uint public constant test3 = 40;
   uint public constant test4 = 40;
   uint internal constant test5
