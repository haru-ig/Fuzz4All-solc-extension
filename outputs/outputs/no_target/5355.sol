pragma solidity ^0.8.0;
contract Mutations {
    function test1() public pure {
        uint x = 5;
        uint n = min(-x);
        assert(x > 0);
        assert(n < 0);
    }
    function test2(uint x) public pure {
        uint m;
    }
    function test_reverts() public pure {
        int8 x = -1;
        assert(x > 0);
        revert("Error");
        uint y = int256(x);
    }
}
