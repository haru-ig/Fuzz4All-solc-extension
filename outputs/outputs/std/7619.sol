pragma solidity ^0.8.0;
contract BetterCase4562Mutator is BetterCase4562 {
    uint public x;
    constructor(uint _val) public {
        require(_val < 100, "x is larger than 100");
        x = _val;
    }
    function set(uint y) public {
        value = y;
    }
    function get() view public returns (uint) {
        return value;
    }
}
