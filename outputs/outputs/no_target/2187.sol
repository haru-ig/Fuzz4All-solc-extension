pragma solidity ^0.8.0;
contract Modifications2_SEM9 {
    struct C {uint a; uint b; function C(uint _a, uint _b) { a = _a; b = _b; } }
    function f () public pure returns (C memory) {
        return C(1234, 5678);
    }
}
