pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint a, uint x) public pure {
        if (x > 1) {
            printMultiples(a, x - 1);
        }
        else if (x > 0) {
            a *= 2;
        }
    }
}
