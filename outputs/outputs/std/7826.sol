pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint x, uint a) public pure {
        if (a > 1) {
            printMultiples(x, a - 1);
        }
        else if (a > 0) {
            x *= 2;
        }
        else {
            x = x / 2;
        }
    }
}
