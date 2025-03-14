pragma solidity ^0.8.0;
contract BetterCase4562 {
    uint value;
    function modify(uint x) public {
        value = x;
    }
    function get() view public returns (uint) {
        return value;
    }
}
