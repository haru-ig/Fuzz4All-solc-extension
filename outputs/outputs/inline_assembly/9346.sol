pragma solidity ^0.8.0;
contract C {
    uint constant r = 10;
    function g() public pure returns (uint) {
         r = 20;
         return 2*r;
    }
}
