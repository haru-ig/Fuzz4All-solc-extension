pragma solidity ^0.8.0;
contract WithFallback1 {
    function f1(uint[] memory) public pure { require(true);}
    function _fallback(uint, uint[] memory) public pure {
        f1([])[](0, []);
    }
}
