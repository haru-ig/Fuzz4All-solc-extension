pragma solidity ^0.8.0;
contract GeneticSolution
{
   uint private _generation = 1;
   uint public constant test1 = 10;
   uint public constant test2 = 10;
   uint public constant test3 = 10;
   function setGeneration(uint _generation) public pure {
       uint newGeneration;
       for (uint i = 0; i < _generation; i++) {
       }
   }
   function solve2() public pure returns (uint) {
       setGeneration(_generation++);
       uint r;
       if (test1!= 0) {
           r = 1;
       } else {
           uint i;
           for (i = test2; i < 10; i++) {
           }
           r = 2;
       }
       return r;
   }
}
