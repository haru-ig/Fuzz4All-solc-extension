pragma solidity ^0.8.0;
contract New {
    function get(uint a, uint b) public view returns (uint) {
        return a + 10 * b;
    }
}
contract Simple {
    Old old;
    New new;
    uint constant a = 100;
    uint constant b = 3;
    constructor() {
        old = Old(address(this));
        new = New(address(this));
    }
    function run() public {
        uint c = old.get(a, b);
        uint d = new.get(a, b);
        uint e = 10 + 20 / 3;
    }
}
