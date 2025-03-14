pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint x, uint a) public pure {
        if (a > 1) {
            printMultiples(x * 10, a - 1);
        }
        else if (a > 0) {
            x *= a;
        }
        else {
            x = x / a;
        }
    }
}
