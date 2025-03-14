pragma solidity ^0.8.0;
contract Solve2
{
   uint public constant test1 = 1;
   uint public constant test2 = 2;
   uint public constant test3 = 3;
   uint public constant test4 = 4;
   function solveModul(uint modulus) returns (uint) {
      uint r;
      if (test1 > test2 && test1 > test3 && test1 > test4) {
         r = 1;
      } else {
         uint i = 0;
         while (i < modulus) {
             i++;
         }
         r = 100;
      }
      return r;
   }
}
pragma solidity ^0.8.0;
contract SolveModul3 {
   uint public constant test1 = 1;
   uint public constant test2 = 2;
   uint public constant test3 = 3;
   uint public constant test4 = 4;
   uint public constant test5 = 5;
   uint public constant test6 = 6;
   uint public constant test7 = 7;
   uint public constant test8 = 8;
   function solveModul4(uint n, uint modulus) returns (uint) {
      uint r;
      uint sum = 0;
      uint i = 0;
      while (i < n) {
         uint x = solveModul(modulus);
         i = i + 1;
         sum = sum + x;
      }
      r = sum;
      return r;
   }
}



pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract ModulusTest is SafeMath
{
    using SafeMath for uint;

    function testModulus(uint x, uint y) public pure returns (uint r) {
        r = x.mod(y);
        if (r > y) r = add(r, y);
    }

    function createModulus(uint x) public pure returns (uint r) {
        r = x.div(100);
        if (r > 70000) {
            r = mod(r+1, 100);
        }
    }

    function modulusTest(uint x, uint y) public pure returns (uint r) {
        require(x > y);
        r = x.mod(y);
