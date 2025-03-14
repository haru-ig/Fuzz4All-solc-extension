pragma solidity ^0.8.0;
contract C1 {
    function myFunction() public pure returns (uint8 v, uint8 w) {
        w = 0;
        v = 4 << 8;
    }
}
