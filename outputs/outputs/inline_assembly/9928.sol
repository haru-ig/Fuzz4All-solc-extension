pragma solidity ^0.8.0;
contract D {
    uint256 public value;
    uint256 public value2;
    constructor() {

        value = 2;

        value = 0;

        value = 0;
        value2 = value;
    }
    function test(uint256 v) public {
        uint256 x = 6;
        value = v;
        value = 0;
        value = 0;
        value = x;
    }
    function test2() public {
        value = 0;
        value2 = get(1) + 1;
        value = 1;
        assert(get(1) == 2);
    }
}
