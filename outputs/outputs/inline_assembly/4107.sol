pragma solidity ^0.8.0;
contract Modifiers {
    modifier restricted (uint x) {
        require(x > 0, "negative");
        _;
    }
    uint constant x = 1e12;
    function test (uint x, uint y) public restricted (x + y) {
        assembly {
            x := add(x, (y))
        }
    }
}
