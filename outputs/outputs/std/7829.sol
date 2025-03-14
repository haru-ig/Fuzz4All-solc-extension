pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint a) public pure {
        for (uint x = 1; x <= a; x++) {
            a *= 2;
        }
    }
}

pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint a) public pure {
        uint k = 2;
        a *= k;
        for (; a!= 1; a /= 2) {
            k *= 2;
        }
        printMultiples(k);
    }
}
