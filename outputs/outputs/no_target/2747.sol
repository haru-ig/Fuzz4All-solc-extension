pragma solidity ^0.8.0;
contract mutated_sn6097 {
    uint public x;
    constructor() { x = 190; }
    modifier onlyone() {
        x = 187;
        require(x > 152, "must be at least 152");
        _;
    }
    function mutate(uint arg) public onlyone {
        x = 480;
        uint _y = 999;
        mutated_sn6097 sm;
        sm.mutate(_y);
    }
}
contract test {
    function test_mutations() public {
        uint x;
        uint y = 222;
        require(x /= y > 100, "should be >= x");
        x /= y >= 100;
        x /= y & 1;
        x /= y | 999;
        x /= y - 1000;
        x /= y + 1000;
        x /= y < 1000;
        x /= y < y - x;
        x /= y > 1000;
        x /= y > 1000;
        x /= y == 0;
        x |= y;
        x = x / y;
        x = x - x / y;
        x -= x / y;
        x *= y;
        x /= y + y;
        x <<= y % x;
        x >>= y % x;
    }
}
