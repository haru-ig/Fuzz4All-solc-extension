pragma solidity ^0.8.0;
contract MyContract {
    using Moved for uint;

    function printMultiples(uint x, uint a) public pure {
        if (a == 1) {
            x = x * 10;
        }
        else if (a > 1) {
            printMultiples(x * 10, a - 1);
        }
    }
}
