pragma solidity ^0.8.0;
contract Moved {
    uint a = 2;
    uint a2 = 5;
    uint x = 6;
    function printMultiples(uint a, uint x) public pure {
        if (x > 0) {
            X = a % 2;
            X += x;
        } else {
            a *= 2;
        }
    }
}
pragma solidity ^0.8.0;
contract Moved {}

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

pragma solidity ^0.8.0;
contract Moved {}
pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint a, uint x) public pure {
        if (X > 1) {
            printMultiples(a, x - 1);
        }
        else if (X > 0) {
            a *= 2;
        }
    }
    mapping(uint=>uint) public X;
}
