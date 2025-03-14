pragma solidity ^0.8.0;
contract BetterCase9 {
    function modifies2(uint[5][5][5][5] memory a, uint x) public {
        a[0][0][0][0] -= x;
    }
}
contract BadCase5 { }
