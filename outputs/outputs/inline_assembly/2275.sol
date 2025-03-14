pragma solidity ^0.8.0;
contract Mutation
{
    uint a0;
    uint a1;
    constructor(uint a0, uint a1) {
        uint b0 = a0 + 1;
        uint b1 = a1 + 1;
        a0 = b0;
        a1 = b1;
        _increment(a0);
        _increment(a1);
    }



    function _increment(uint n) internal view {
        if (n == 0) {
            return;
        }
        else {
            n = n + 1;
            _increment(n);
        }
    }
    event incremented(uint n);
    function update() public {
        incremented(a0 + 1);
        incremented(a0 + 1);
        incremented(a1 + 1);

    }
}
