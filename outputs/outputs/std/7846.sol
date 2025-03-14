pragma solidity ^0.8.0;
contract NotMoved {
    function printMultiples(uint8 a, uint8 b) public pure {
        a *= b;
    }
}
