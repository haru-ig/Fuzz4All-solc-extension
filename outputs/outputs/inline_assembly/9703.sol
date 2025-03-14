pragma solidity ^0.8.0;

contract SemanticYulContract {
 uint constant c = 50;
   address constant contractBaseContract = 0x07e30a02e0679ef859e4cd10fd7375ff777573eb;
   uint constant contractCounter = 0;
   uint internal contractCounterUpdate = 0;

   function subtract(uint x) public pure returns (uint) {
       if (x > 80) {
           return c + x*c;
       } else {
           return 12 + x*c;
       }
   }
   function power(uint x) public pure returns (uint) {
       if (x > 80) {
           return 52*c*c*c * 52*c*c*x;
       } else {
           return 1000* 52*c*c* 1000* c*x*c;
       }
   }
}


pragma solidity ^0.8.0;

contract SemanticYulContract {
  uint constant c = 50;
  uint internal constant c2 = 1;
  uint internal constant f = 75;
  uint internal constant d = 4;
  address constant contractBaseContract = 0x07e30a02e0679ef859e4cd10fd7375ff777573eb;
  uint internal constant contractCounter = 1200;
  uint public constant maxCounter = 1100;
  uint internal constant contractCounterUpdate = 0;

  uint[] internal counter;
  uint[] internal x;
  address[] internal a;

  function add(uint a) internal pure returns (uint) {
    if (a > 50 && a<= maxCounter) {


        return c2 * a
