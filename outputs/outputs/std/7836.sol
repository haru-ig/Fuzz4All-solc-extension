pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint x, uint a) public pure {
        if (a > 0) {
            x *= a;
        }
        else {
            x = x / a;
        }
    }
}

pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint x, uint a) public pure {
        while (x!= 0) {
            x /= a;
        }
    }
}

pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint x, uint a) public pure {
        while ((x = x / a)!= 0) {
        }
    }
}
