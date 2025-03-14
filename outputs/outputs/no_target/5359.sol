pragma solidity ^0.8.0;
contract OldMutations {
    function test1() public pure {
        uint y = 10;
    uint x = 5;
    uint n = y + 1;
    }
    function test2(uint x, uint y) public pure {
        uint z = 5;
        uint m = uint(x);
    }
    function test_reverts(int8 x) public pure {
        uint256 y = 10;
    uint256 x = 5;
    uint256 n;
    if (x > y) {
        n = y + 1;
    } else {
        x -= y;
        n = 0;
    }
}
