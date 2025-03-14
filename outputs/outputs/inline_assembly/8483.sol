pragma solidity ^0.8.0;
contract SolveModul
{
    uint public constant test1 = 100;
    uint test2 = 0;
    uint test3 = 0;
    uint test4 = 0;
    uint test5 = 0;
    uint public test6 = 0;

    function solve() public pure returns (uint) {



       if (test1 == 0 || test4 == 0) {
          return 1;
      }
       else if ((test1 & 0x7fffffffffff) > (0x7fffffffffff / 2)) {
          return 1;
       }
       else if ((test2 & 0xfffffffffffff) < (0xfffffffffffff / 8)) {
          return 2;
        }
       else {
           test2 = (test2 + 1) >> 1;
           return 2;
        }
    }
}
