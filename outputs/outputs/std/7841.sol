pragma solidity ^0.8.0;
contract Untouched {
    function printMultiples(uint a, uint b) public pure {
    }
}

pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint a, uint b) public pure {
        a *= b;
    }
}
