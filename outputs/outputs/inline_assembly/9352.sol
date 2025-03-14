pragma solidity ^0.8.0;
contract C {
    uint constant r = 10;
    function g() public pure returns (uint) {
         uint  memory x = r;
         assembly {
         r = add(x, x)
         let sum := r
         }
         return sum;
    }
}
