pragma solidity ^0.8.0;
contract TestMutated1019 {
    enum FooBar {
      FOO,
      BAR,
      DUD
   }
   modifier noreturn {

      }
    function returnFromEnum() external noreturn {
       return FooBar.BAR;
    }
}

address a;
function myFunction() external returns(uint256 value) {
   value = a + 2;
}
