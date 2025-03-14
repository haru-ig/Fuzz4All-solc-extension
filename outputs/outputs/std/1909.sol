pragma solidity ^0.8.0;
contract ArraysMutated3 {
    uint internal constant counter = 100500;
    function mutated() public {
       (uint[1][3] memory a, uint[1][3] memory b) = {
          {10, 9, 8},
          {20, 10, 8}
         };
       a[0][0];
    }
    function decrement() public {
       counter--;
    }
}
