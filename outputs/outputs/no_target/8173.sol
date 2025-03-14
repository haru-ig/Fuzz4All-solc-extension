pragma solidity ^0.8.0;
contract Mutated {
    uint x;
    function Mutated(uint M) {
        x = 100 * M;
    }
    function Mutated(uint M1, uint M2) public {
        M1 = 100 * M1;
        M2 = 100 * M2;
        x = M1 + M2;
    }
    function Mutated() public {
        x = 100 * 20;
    }
}
