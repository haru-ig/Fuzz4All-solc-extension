pragma solidity ^0.8.0;
contract newStorage {
    uint constant a = 3;
    function test(uint i) external {
        if (i < 0) revert();
        a = 4 - 2 * i;
    }
}
