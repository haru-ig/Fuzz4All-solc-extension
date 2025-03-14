pragma solidity ^0.8.0;
contract Mutated {
    uint x = 2;
    constructor() { }
    function shouldBe2() public view {
        assert(x == 2);
        x = 4;
    }
}
