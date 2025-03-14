pragma solidity ^0.8.0;
contract T3E {
    uint256 t = 123;
    uint256[] mem = [1,2];
    function T3E() {
        uint256 z;
        z = mem[t];
        z--;
    }
}
