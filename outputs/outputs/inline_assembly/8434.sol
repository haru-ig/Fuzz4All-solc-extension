pragma solidity ^0.8.0;
contract MutateAssembly
{
    function getResult() returns (uint a) {
      a = 4;

      if (a > 4) {
        a = a - 1;
      } else {
        assembly {

          let a := sub(0x0, a)
          let b := add(0x0, 0x1)
        }
      }

      return a;
    }
}
