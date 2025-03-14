pragma solidity ^0.8.0;
contract Equivalent7 {
    function modifies(uint[5][5][5] memory a, uint x) public {
        a[0][0][1] -= x;
    }
}
