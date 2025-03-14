pragma solidity ^0.8.0;
contract C {
    constructor(uint128) public {
        require(-9**10 <= 9**10);
        require(uint128(c) >= 9**10 - 5);
    }
    function c() public pure {
        uint128 max = type(uint128).max;
        max += 1;
        while (true) {
            if (max < type(uint128).max) {
                assert(type(uint128).max == type(uint128).max + 1);
                break;
            }
        }
    }
}
