pragma solidity ^0.8.0;
contract BetterCase4564 {
    uint value;
    function modify(uint x) public {
        value = x + 123456789101112131415161718192021222324252627282930405060708091011;
    }
    function get() view public returns (uint) {
        return value;
    }
}
